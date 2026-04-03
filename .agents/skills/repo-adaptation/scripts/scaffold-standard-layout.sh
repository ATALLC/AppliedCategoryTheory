#!/usr/bin/env bash
# scaffold-standard-layout.sh — Create the standard agent-facing directory structure.
#
# Usage:
#   scaffold-standard-layout.sh <repo-root> [--templates-dir <path>]
#
# Creates the .agents/ directory tree and copies starter templates (AGENTS.md,
# SKILL.template.md, etc.) into the target repo. Never overwrites existing files.
#
# Options:
#   --templates-dir <path>  Path to the templates/ directory of this skill.
#                           Defaults to ../templates relative to this script.
#
# Exit codes:
#   0  Success
#   1  Missing argument or invalid directory

set -euo pipefail

usage() {
  echo "Usage: $0 <repo-root> [--templates-dir <path>]"
  echo ""
  echo "Create the standard .agents/ directory structure in a repository."
  echo "Copies starter templates without overwriting existing files."
  echo ""
  echo "Options:"
  echo "  --templates-dir <path>  Path to templates directory (default: ../templates)"
  exit 1
}

if [[ $# -lt 1 ]]; then
  usage
fi

REPO_ROOT="$1"
shift

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATES_DIR="$SCRIPT_DIR/../templates"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --templates-dir)
      TEMPLATES_DIR="$2"
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

echo "=== Scaffolding standard agent layout ==="
echo "Repository: $REPO_ROOT"
echo "Templates:  $TEMPLATES_DIR"
echo ""

# ---- Create directories ----
dirs=(
  ".agents/skills"
  ".agents/handoffs"
  ".agents/plans"
  ".agents/memory"
  ".agents/templates"
  ".agents/logs"
)

for dir in "${dirs[@]}"; do
  target="$REPO_ROOT/$dir"
  if [[ -d "$target" ]]; then
    echo "[EXISTS] $dir/"
  else
    mkdir -p "$target"
    echo "[CREATED] $dir/"
  fi
done

echo ""

# ---- Copy AGENTS.md template ----
copy_if_missing() {
  local src="$1"
  local dest="$2"
  local label="$3"

  if [[ ! -f "$src" ]]; then
    echo "[SKIP] $label — template not found at $src"
    return
  fi

  if [[ -f "$dest" ]]; then
    echo "[EXISTS] $label — $dest already exists, not overwriting"
  else
    cp "$src" "$dest"
    echo "[CREATED] $label — $dest"
  fi
}

copy_if_missing \
  "$TEMPLATES_DIR/AGENTS.template.md" \
  "$REPO_ROOT/AGENTS.md" \
  "AGENTS.md"

copy_if_missing \
  "$TEMPLATES_DIR/SKILL.template.md" \
  "$REPO_ROOT/.agents/templates/SKILL.template.md" \
  ".agents/templates/SKILL.template.md"

copy_if_missing \
  "$TEMPLATES_DIR/HANDOFF.template.md" \
  "$REPO_ROOT/.agents/templates/HANDOFF.template.md" \
  ".agents/templates/HANDOFF.template.md"

echo ""
echo "=== Scaffolding complete ==="
echo ""
echo "Next steps:"
echo "  1. Edit AGENTS.md to describe your project"
echo "  2. Add skills to .agents/skills/ as needed"
echo "  3. Use .agents/handoffs/ for session continuity"
