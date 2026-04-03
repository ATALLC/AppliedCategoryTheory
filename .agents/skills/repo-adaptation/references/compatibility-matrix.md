# Compatibility Matrix

How the target `AGENTS.md` + `.agents/` structure relates to current AI coding tools.

## Tool support overview

| Tool | Primary instruction file | Reads `AGENTS.md`? | Reads `.agents/skills/`? | Legacy files |
|---|---|---|---|---|
| **OpenAI Codex** | `AGENTS.md` | Yes (native) | Yes (native) | N/A |
| **OpenCode** | `AGENTS.md` | Yes (preferred) | Project rules supported | Falls back to `CLAUDE.md` |
| **Claude Code** | `CLAUDE.md` | Via convention | Via custom commands | `CLAUDE.md`, `.claude/` |
| **Cursor** | `.cursorrules` | No (manual) | No | `.cursorrules`, `.cursorignore` |
| **GitHub Copilot** | `.github/copilot-instructions.md` | No | No | Own format |
| **Windsurf** | `.windsurfrules` | No | No | Own format |
| **Aider** | `.aider.conf.yml` | No | No | Own format |

## Compatibility strategies

### Teams using Codex + OpenCode

Best case. Both tools natively read `AGENTS.md`. Migration is straightforward — consolidate everything into `AGENTS.md` and `.agents/skills/`. OpenCode will also fall back to `CLAUDE.md` if it exists, so keeping it as a shim is safe but optional.

### Teams using Claude Code

Claude Code reads `CLAUDE.md` and `.claude/` natively. Until Claude Code adds native `AGENTS.md` support:

- Keep `CLAUDE.md` as a compatibility shim that either duplicates or points to `AGENTS.md`.
- Map `.claude/commands/` to `.agents/skills/` and keep the old commands as thin wrappers if needed.
- Document this dual-maintenance requirement in the migration report.

### Teams using Cursor

Cursor reads `.cursorrules` for code style guidance. Since Cursor does not read `AGENTS.md`:

- Keep `.cursorrules` in place for Cursor users.
- Consolidate the same rules into the code conventions section of `AGENTS.md`.
- Note in the migration report that `.cursorrules` and `AGENTS.md` contain overlapping content and should be kept in sync.

### Teams using GitHub Copilot

Copilot reads `.github/copilot-instructions.md`. Similar to Cursor:

- Keep the Copilot file for Copilot users.
- Merge content into `AGENTS.md`.
- Document the overlap.

### Multi-tool teams

When a team uses 3+ tools, the migration report should explicitly list which files serve which tools and recommend a sync strategy. Common approaches:

1. **Single source with shims**: `AGENTS.md` is authoritative; tool-specific files are generated or manually synced from it.
2. **Parallel maintenance**: Each file is maintained independently. Workable for small files but error-prone at scale.
3. **Gradual convergence**: Start with parallel maintenance, migrate tools to `AGENTS.md` as they add support.

Recommend option 1 for new setups and option 3 for existing teams with entrenched workflows.

## What NOT to assume

- Do not assume all tools can read `AGENTS.md`. Check the matrix above.
- Do not assume legacy files are safe to delete. They may serve tools that are actively in use.
- Do not hardcode vendor-exclusive features into `AGENTS.md` (e.g., Claude-specific XML tags or Cursor-specific ignore patterns). Keep the content tool-neutral and add tool-specific notes in a clearly labeled compatibility section.
