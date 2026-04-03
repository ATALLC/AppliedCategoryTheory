# Migration Rules

Rules for mapping legacy agent-facing conventions to the target structure. The guiding principle: **additive-first, not replacement-first**. Preserve source intent before translating structure.

## General rules

1. **Never delete legacy files by default.** Add a deprecation header pointing to the new canonical location.
2. **Preserve source intent.** Read the legacy file carefully and understand what it was trying to accomplish before deciding where to map it.
3. **One canonical source.** After migration, `AGENTS.md` is the single source of truth for global repo policy. Legacy files may remain as compatibility shims but should not be the primary reference.
4. **If conflicts exist, stop.** When two legacy files contradict each other, document the conflict in the migration report and ask the human to resolve it.

## Mapping table

| Legacy source | Target location | Notes |
|---|---|---|
| `CLAUDE.md` (global repo guidance) | `AGENTS.md` | Merge content. Keep `CLAUDE.md` as fallback with pointer. |
| `CLAUDE.md` (workflow/procedure) | `.agents/skills/<slug>/SKILL.md` | Extract reusable workflows into skills. |
| `.claude/settings.json` | No direct equivalent | Document tool-specific settings in compatibility notes. |
| `.claude/commands/` | `.agents/skills/` | Map each command to a skill. |
| `.cursorrules` | `AGENTS.md` | Merge code-style rules into AGENTS.md conventions section. |
| `.cursorignore` | No direct equivalent | Document in compatibility notes; keep file in place. |
| `.opencode/` config | `AGENTS.md` | Extract instructions into AGENTS.md. |
| `opencode.json` | No direct equivalent | Document in compatibility notes. |
| `.github/copilot-instructions.md` | `AGENTS.md` | Merge content. Keep Copilot file if team uses Copilot. |
| `.windsurfrules` | `AGENTS.md` | Merge code-style rules. |
| `.aiderignore` / `.aider.conf.yml` | No direct equivalent | Document in compatibility notes. |
| `docs/ai-instructions.md` (or similar) | `AGENTS.md` or `.agents/memory/` | Global instructions go to AGENTS.md; architectural docs go to memory. |
| Handoff/continuity markdown | `.agents/handoffs/` | Move if operational and current. Archive if stale. |

## Merge strategy for `AGENTS.md`

When multiple sources contribute content to `AGENTS.md`, organize the merged file with these sections:

1. **Project overview** — What this repo is, high-level architecture.
2. **Quick start** — Build, test, lint commands.
3. **Code conventions** — Style rules, naming, patterns.
4. **Constraints** — Things to avoid, security rules, performance requirements.
5. **Skills** — Pointers to `.agents/skills/` for complex workflows.
6. **Compatibility** — Notes on legacy files that remain and why.

De-duplicate content during the merge. If two sources say the same thing differently, pick the clearer version.

## Deprecation header format

Add this to the top of legacy files that are being superseded:

```markdown
> **Note:** This file is retained for compatibility with [tool name].
> The canonical agent instructions now live in `AGENTS.md` at the repo root.
> See `.agents/` for the full agent-facing structure.
```

## Edge cases

- **Legacy file is the only source of a critical instruction**: Copy the instruction into `AGENTS.md` verbatim before adding a deprecation header to the legacy file. Do not rely on the agent reading both files.
- **Legacy file is referenced by CI/CD**: Keep the file in place and note the dependency in the migration report. Removing it could break pipelines.
- **Multiple `CLAUDE.md` files in subdirectories**: Each one likely contains directory-scoped instructions. These map to skills or to scoped sections within `AGENTS.md`, depending on granularity.
