#!/usr/bin/env bash
# inspect-repo.sh — Inventory agent-facing files and directories in a repository.
#
# Usage:
#   inspect-repo.sh <repo-root>
#
# Output:
#   Structured text report on stdout listing every discovered agent-facing file
#   with path, size, and a content fingerprint (first non-blank line).
#
# Exit codes:
#   0  Success
#   1  Missing argument or invalid directory

set -euo pipefail

usage() {
  echo "Usage: $0 <repo-root>"
  echo ""
  echo "Inspect a repository for agent-facing files and directories."
  echo "Prints a structured inventory to stdout."
  exit 1
}

if [[ $# -lt 1 ]]; then
  usage
fi

REPO_ROOT="$1"

if [[ ! -d "$REPO_ROOT" ]]; then
  echo "Error: '$REPO_ROOT' is not a directory." >&2
  exit 1
fi

# Normalize to absolute path
REPO_ROOT="$(cd "$REPO_ROOT" && pwd)"

echo "=== Repo Adaptation — Repository Inspection ==="
echo "Repository: $REPO_ROOT"
echo "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo ""

# ---- Helper: report on a file if it exists ----
report_file() {
  local filepath="$1"
  local label="$2"
  if [[ -f "$filepath" ]]; then
    local size
    size=$(wc -c < "$filepath" | tr -d ' ')
    local firstline
    firstline=$(grep -m1 -v '^\s*$' "$filepath" 2>/dev/null || echo "(empty)")
    local relpath="${filepath#"$REPO_ROOT"/}"
    echo "  [FILE] $relpath"
    echo "    Label: $label"
    echo "    Size: ${size} bytes"
    echo "    First line: $firstline"
    echo ""
  fi
}

# ---- Helper: report on a directory if it exists ----
report_dir() {
  local dirpath="$1"
  local label="$2"
  if [[ -d "$dirpath" ]]; then
    local count
    count=$(find "$dirpath" -type f 2>/dev/null | wc -l | tr -d ' ')
    local relpath="${dirpath#"$REPO_ROOT"/}"
    echo "  [DIR]  $relpath/"
    echo "    Label: $label"
    echo "    Files: $count"
    if [[ "$count" -gt 0 ]]; then
      echo "    Contents:"
      find "$dirpath" -type f -printf "      %P\n" 2>/dev/null | head -20
      if [[ "$count" -gt 20 ]]; then
        echo "      ... and $((count - 20)) more"
      fi
    fi
    echo ""
  fi
}

# ---- Known agent-facing files ----
echo "--- Agent-facing files ---"
echo ""

report_file "$REPO_ROOT/AGENTS.md"                          "Modern standard — primary agent instructions"
report_file "$REPO_ROOT/CLAUDE.md"                           "Claude Code — legacy primary instructions"
report_file "$REPO_ROOT/.cursorrules"                        "Cursor — code style rules"
report_file "$REPO_ROOT/.cursorignore"                       "Cursor — ignore patterns"
report_file "$REPO_ROOT/.github/copilot-instructions.md"     "GitHub Copilot — instructions"
report_file "$REPO_ROOT/.windsurfrules"                      "Windsurf — code style rules"
report_file "$REPO_ROOT/.aider.conf.yml"                     "Aider — configuration"
report_file "$REPO_ROOT/.aiderignore"                        "Aider — ignore patterns"
report_file "$REPO_ROOT/opencode.json"                       "OpenCode — project config"
report_file "$REPO_ROOT/codex.md"                            "Codex — instructions (alt name)"

# ---- Known agent-facing directories ----
echo "--- Agent-facing directories ---"
echo ""

report_dir "$REPO_ROOT/.agents"                              "Modern standard — agent skills/handoffs/plans"
report_dir "$REPO_ROOT/.claude"                              "Claude Code — settings and commands"
report_dir "$REPO_ROOT/.opencode"                            "OpenCode — project configuration"
report_dir "$REPO_ROOT/.cursor"                              "Cursor — project settings"

# ---- Subdirectory CLAUDE.md files ----
echo "--- Subdirectory CLAUDE.md files ---"
echo ""

found_sub=0
while IFS= read -r -d '' f; do
  # Skip the root one (already reported)
  if [[ "$f" != "$REPO_ROOT/CLAUDE.md" ]]; then
    report_file "$f" "Claude Code — scoped instructions"
    found_sub=1
  fi
done < <(find "$REPO_ROOT" -maxdepth 3 -name "CLAUDE.md" -print0 2>/dev/null)

if [[ "$found_sub" -eq 0 ]]; then
  echo "  (none found)"
  echo ""
fi

# ---- Possible ad hoc guidance files ----
echo "--- Possible ad hoc guidance ---"
echo ""

adhoc_patterns=(
  "docs/ai-*.md"
  "docs/agent-*.md"
  "docs/llm-*.md"
  "docs/prompts/*.md"
  ".github/ai-*.md"
  "AI_INSTRUCTIONS.md"
  "PROMPT.md"
  "LLM.md"
)

found_adhoc=0
for pattern in "${adhoc_patterns[@]}"; do
  while IFS= read -r -d '' f; do
    report_file "$f" "Ad hoc guidance (pattern: $pattern)"
    found_adhoc=1
  done < <(find "$REPO_ROOT" -maxdepth 3 -path "$REPO_ROOT/$pattern" -print0 2>/dev/null)
done

if [[ "$found_adhoc" -eq 0 ]]; then
  echo "  (none found)"
  echo ""
fi

# ---- Summary ----
echo "--- Summary ---"
echo ""

total=0
for item in \
  "$REPO_ROOT/AGENTS.md" \
  "$REPO_ROOT/CLAUDE.md" \
  "$REPO_ROOT/.cursorrules" \
  "$REPO_ROOT/.cursorignore" \
  "$REPO_ROOT/.github/copilot-instructions.md" \
  "$REPO_ROOT/.windsurfrules" \
  "$REPO_ROOT/.aider.conf.yml" \
  "$REPO_ROOT/.aiderignore" \
  "$REPO_ROOT/opencode.json" \
  "$REPO_ROOT/codex.md"; do
  [[ -f "$item" ]] && total=$((total + 1))
done
for item in \
  "$REPO_ROOT/.agents" \
  "$REPO_ROOT/.claude" \
  "$REPO_ROOT/.opencode" \
  "$REPO_ROOT/.cursor"; do
  [[ -d "$item" ]] && total=$((total + 1))
done

echo "Total agent-facing items found: $total"
echo ""
echo "=== Inspection complete ==="
