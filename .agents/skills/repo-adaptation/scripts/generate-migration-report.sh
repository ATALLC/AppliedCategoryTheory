#!/usr/bin/env bash
# generate-migration-report.sh — Generate a migration report from inspection results.
#
# Usage:
#   generate-migration-report.sh <repo-root> [--template <path>] [--output <path>]
#
# Runs inspect-repo.sh, then fills in the migration report template with
# the discovered files and a preliminary classification.
#
# Options:
#   --template <path>  Path to MIGRATION-REPORT.template.md
#                      Defaults to ../templates/MIGRATION-REPORT.template.md
#   --output <path>    Output file path. Defaults to <repo-root>/MIGRATION-REPORT.md
#
# Exit codes:
#   0  Success
#   1  Missing argument or invalid directory

set -euo pipefail

usage() {
  echo "Usage: $0 <repo-root> [--template <path>] [--output <path>]"
  echo ""
  echo "Generate a migration report for a repository."
  echo ""
  echo "Options:"
  echo "  --template <path>  Path to report template"
  echo "  --output <path>    Output file (default: <repo-root>/MIGRATION-REPORT.md)"
  exit 1
}

if [[ $# -lt 1 ]]; then
  usage
fi

REPO_ROOT="$1"
shift

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE="$SCRIPT_DIR/../templates/MIGRATION-REPORT.template.md"
OUTPUT=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --template)
      TEMPLATE="$2"
      shift 2
      ;;
    --output)
      OUTPUT="$2"
      shift 2
      ;;
    -h|--help)
      usage
      ;;
    *)
      echo "Unknown option: $1" >&2
      exit 1
      ;;
  esac
done

if [[ ! -d "$REPO_ROOT" ]]; then
  echo "Error: '$REPO_ROOT' is not a directory." >&2
  exit 1
fi

REPO_ROOT="$(cd "$REPO_ROOT" && pwd)"

if [[ -z "$OUTPUT" ]]; then
  OUTPUT="$REPO_ROOT/MIGRATION-REPORT.md"
fi

# ---- Run inspection ----
echo "Running inspection on $REPO_ROOT ..." >&2
INSPECTION=$("$SCRIPT_DIR/inspect-repo.sh" "$REPO_ROOT" 2>&1) || {
  echo "Error: Inspection failed." >&2
  exit 1
}

# ---- Classify repository ----
has_agents_md=false
has_agents_dir=false
has_legacy=false
legacy_count=0

[[ -f "$REPO_ROOT/AGENTS.md" ]] && has_agents_md=true
[[ -d "$REPO_ROOT/.agents" ]] && has_agents_dir=true

for f in \
  "$REPO_ROOT/CLAUDE.md" \
  "$REPO_ROOT/.cursorrules" \
  "$REPO_ROOT/.github/copilot-instructions.md" \
  "$REPO_ROOT/.windsurfrules" \
  "$REPO_ROOT/.aider.conf.yml" \
  "$REPO_ROOT/opencode.json"; do
  if [[ -f "$f" ]]; then
    has_legacy=true
    legacy_count=$((legacy_count + 1))
  fi
done

for d in "$REPO_ROOT/.claude" "$REPO_ROOT/.opencode" "$REPO_ROOT/.cursor"; do
  if [[ -d "$d" ]]; then
    has_legacy=true
    legacy_count=$((legacy_count + 1))
  fi
done

# Determine classification
classification="greenfield"
if $has_agents_md || $has_agents_dir; then
  if $has_legacy; then
    classification="mixed-conflicted"
  elif $has_agents_md && $has_agents_dir; then
    classification="partial-modern"
    # Could be fully modern, but we flag as partial for review
  else
    classification="partial-modern"
  fi
elif $has_legacy; then
  if [[ "$legacy_count" -gt 1 ]]; then
    classification="mixed-conflicted"
  else
    classification="legacy-tool-specific"
  fi
fi

# ---- Build the report ----
REPO_NAME=$(basename "$REPO_ROOT")
TODAY=$(date -u +%Y-%m-%d)

if [[ -f "$TEMPLATE" ]]; then
  # Start from template and fill in key fields
  cp "$TEMPLATE" "$OUTPUT"
else
  echo "Warning: Template not found at $TEMPLATE, generating minimal report." >&2
  cat > "$OUTPUT" << 'MINEOF'
# Migration Report
MINEOF
fi

# Generate a filled-in report
cat > "$OUTPUT" << EOF
# Migration Report

**Repository:** $REPO_NAME
**Date:** $TODAY
**Mode:** assessment

## Classification

**State:** $classification

**Evidence:**
$(if $has_agents_md; then echo "- AGENTS.md found at repo root"; fi)
$(if $has_agents_dir; then echo "- .agents/ directory found"; fi)
$(if $has_legacy; then echo "- $legacy_count legacy agent-facing item(s) found"; fi)
$(if ! $has_agents_md && ! $has_agents_dir && ! $has_legacy; then echo "- No agent-facing files or directories found"; fi)

## Inspection output

\`\`\`
$INSPECTION
\`\`\`

## Proposed target structure

\`\`\`
$REPO_NAME/
├── AGENTS.md
└── .agents/
    ├── skills/
    ├── handoffs/
    ├── plans/
    ├── memory/
    ├── templates/
    └── logs/
\`\`\`

## Migration mapping

<!-- Fill in based on inspection results above -->

| Source | Destination | Action | Status |
|---|---|---|---|
| (review inspection output) | | | pending |

## Compatibility notes

<!-- Document which legacy files serve which tools -->

## Actions taken

(Assessment mode — no actions taken yet.)

## Unresolved items

- [ ] Review classification and confirm accuracy
- [ ] Decide on migration or bootstrap approach
- [ ] Approve proposed target structure

## Validation

- [ ] AGENTS.md exists and is well-formed
- [ ] .agents/skills/ exists
- [ ] No legacy files deleted without approval
- [ ] Compatibility notes present for retained legacy files
- [ ] Re-inspection confirms expected structure
EOF

echo "Migration report written to: $OUTPUT" >&2
echo "$OUTPUT"
