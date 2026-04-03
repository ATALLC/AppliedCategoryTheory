# Migration Report

**Repository:** [repo name or path]
**Date:** [YYYY-MM-DD]
**Mode:** [assessment | implementation]

## Classification

**State:** [greenfield | partial-modern | legacy-tool-specific | mixed-conflicted]

**Evidence:**
<!-- Briefly explain why this classification was chosen. -->

## Inventory of discovered files

| File / Directory | Type | Tool | Summary |
|---|---|---|---|
| <!-- e.g., CLAUDE.md --> | <!-- legacy instruction --> | <!-- Claude Code --> | <!-- Contains build commands and code style rules --> |

## Proposed target structure

```
<repo-root>/
├── AGENTS.md
└── .agents/
    ├── skills/
    ├── handoffs/
    ├── plans/
    ├── memory/
    ├── templates/
    └── logs/
```

<!-- Note any deviations from the standard layout and why. -->

## Migration mapping

| Source | Destination | Action | Status |
|---|---|---|---|
| <!-- e.g., CLAUDE.md (build commands) --> | <!-- AGENTS.md § Quick start --> | <!-- Merge --> | <!-- done / pending / needs-review --> |

## Compatibility notes

<!-- Which legacy files are being kept and why. Which tools depend on them. -->

## Actions taken

<!-- Only for implementation mode. List files created, modified, or annotated. -->

| Action | File | Details |
|---|---|---|
| <!-- created / modified / annotated --> | <!-- path --> | <!-- what was done --> |

## Unresolved items

<!-- Decisions or ambiguities that require human input. -->

- [ ] [Unresolved item 1]
- [ ] [Unresolved item 2]

## Validation

- [ ] `AGENTS.md` exists and is well-formed
- [ ] `.agents/skills/` exists
- [ ] No legacy files deleted without approval
- [ ] Compatibility notes present for retained legacy files
- [ ] Re-inspection confirms expected structure
