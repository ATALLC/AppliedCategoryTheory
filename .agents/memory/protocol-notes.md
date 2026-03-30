# `.agents/` Protocol Notes

This note condenses the rationale from the earlier `agent-support-files.md`
proposal that moved ACT to a root `AGENTS.md` plus a structured `.agents/`
directory.

## Goals

- Separate stable repo-wide instructions from agent-specific support files.
- Avoid version-control bloat from ephemeral agent chatter.
- Reduce context-window over-reading by giving agents explicit read order and
  boundaries.
- Support multiple coding agents without duplicating the root contract.

## Repo Shape

```text
/
├── AGENTS.md
├── .agentsignore
└── .agents/
    ├── onboarding.md
    ├── templates/
    ├── plans/
    ├── memory/
    ├── handoffs/
    ├── logs/
    └── skills/
```

## ACT Decisions

- `AGENTS.md` remains the top-level, vendor-neutral contract.
- `README.md` remains the main human entrypoint.
- `templates/`, `plans/`, `memory/`, and `skills/` are committed.
- `handoffs/`, `logs/`, `pipeline.lock`, and portable agent state are
  ephemeral and gitignored.
- `make pack` includes committed `.agents/` materials but excludes ephemeral
  state.
- ACT adopts the structure without adding heavyweight telemetry or lock
  enforcement by default.
