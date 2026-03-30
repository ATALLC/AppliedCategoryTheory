# Agent Support Files

This directory is ACT's committed home for agent-facing onboarding, reusable
templates, durable repo memory, and plan artifacts. It replaces the retired
`copilot/` directory while keeping the useful material in-repo and in the
chat-fallback pack.

## Read Order

1. `../AGENTS.md`
2. `../README.md`
3. `./onboarding.md`
4. the relevant note in `./memory/`
5. the specific artifact you are changing

## Directory Map

- `onboarding.md` continues the repo-local onboarding flow after the root docs.
- `memory/` stores durable repo lore, migrated lessons, and rationale for this
  structure.
- `templates/` stores vendored markdown templates and prompt snippets for
  intake, review, checkpoints, plans, and handoffs.
- `plans/` stores committed task plans that can wait for explicit human
  approval.
- `handoffs/` stores ignored, short-lived task continuity.
- `logs/` stores ignored execution logs.
- `skills/` is reserved for repo-local skills or automation if ACT grows one.

## Legacy Mapping

| Legacy path | New path | Purpose |
| --- | --- | --- |
| `copilot/README.md` | `.agents/README.md` | Agent support inventory and entrypoint |
| `copilot/ASSISTANT-INSTRUCTIONS.md` | `.agents/memory/successor-lessons.md` | Durable repo-specific lessons |
| `copilot/prompts/intro-assistant.md` | `.agents/templates/task-intake.md` | Snapshot-pack intake prompt |
| `copilot/prompts/checkpoint.md` | `.agents/templates/checkpoint.md` | Mid-task checkpoint prompt |
| `copilot/prompts/critic-repo-hygiene.md` | `.agents/templates/doc-review.md` | Documentation review prompt |
| `copilot/prompts/outro-handoff.md` | `.agents/templates/handoff.md` | Successor handoff template |

`copilot/` should not be recreated.
