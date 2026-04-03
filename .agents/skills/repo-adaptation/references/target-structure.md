# Target Repository Structure

This is the canonical agent-facing layout that the repo-adaptation skill aims to produce.

## Standard layout

```
<repo-root>/
├── AGENTS.md                    # Root agent policy — the primary instruction surface
└── .agents/
    ├── skills/                  # Repo-local reusable workflows
    │   └── <skill-slug>/
    │       ├── SKILL.md         # Skill manifest (frontmatter + instructions)
    │       ├── scripts/         # Optional deterministic helper scripts
    │       └── references/      # Optional context docs loaded on demand
    ├── handoffs/                # Prose continuity files for multi-session work
    ├── plans/                   # Plan-first execution docs and approval gates
    ├── memory/                  # Durable project knowledge (architecture decisions, conventions)
    ├── templates/               # Reusable file templates
    └── logs/                    # Optional session or run logs
```

## File purposes

### `AGENTS.md`

The single source of truth for repository-wide agent instructions. Contains:

- Project overview and architecture summary
- Build, test, lint, and deploy commands
- Code style and conventions
- Repository-specific constraints and guardrails
- Pointers to skills in `.agents/skills/` for complex workflows

Keep it concise and operational. It is read on every agent invocation, so every line should earn its place.

### `.agents/skills/<slug>/SKILL.md`

Each skill is a self-contained package for a repeatable workflow. The `SKILL.md` manifest has YAML frontmatter (`name`, `description`) and markdown instructions. Skills are loaded on demand based on their description matching the user's task.

### `.agents/handoffs/`

Prose markdown files that carry context between sessions. Use when work spans multiple conversations and the next agent (or the same agent in a new session) needs to understand what was done, what's pending, and what decisions were made.

### `.agents/plans/`

Structured plan documents for complex multi-step work. These support a plan-first workflow where the agent proposes a plan, gets approval, and then executes.

### `.agents/memory/`

Durable knowledge that outlives any single session: architecture decisions, team conventions, domain glossaries, historical context. Unlike handoffs (which are transient), memory files are meant to be long-lived.

### `.agents/templates/`

File templates that skills or agents can stamp into the repo. For example, a PR template, a new-service skeleton, or a standard config file.

### `.agents/logs/`

Optional. Session logs, run transcripts, or audit trails. Not all teams need this.

## Minimal viable structure

Not every repo needs the full layout. The minimum is:

```
<repo-root>/
├── AGENTS.md
└── .agents/
    └── skills/
```

Add `handoffs/`, `plans/`, `memory/`, etc. only when the team has a use for them. The bootstrap workflow creates the full set of directories, but empty directories are cheap and signal intent.
