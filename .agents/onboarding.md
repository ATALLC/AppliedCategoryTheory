# ACT Agent Onboarding

This file continues the repo-local onboarding flow after `AGENTS.md` and
`README.md`.

## Purpose

ACT is the LevelUp companion repo for study materials, katas, demos, and
session notes that connect mathematical structure to practical engineering
work.

## Read Next

- Read the specific maintained artifact you are changing.
- Read the relevant durable note in `.agents/memory/` if the task needs repo
  history or prior lessons.
- Use `.agents/templates/` instead of inventing one-off prompt text when a
  reusable template already fits the task.

## Working Rules

- Preserve ACT's public-study character and readable teaching focus.
- Keep ACT aligned with its local purpose; do not refactor it into another
  repo's operating model.
- Prefer maintained source files over exports, generated derivatives, or stale
  copies.
- Do not hallucinate APIs, repo structure, or references. Inspect files or ask.
- When a human corrects prior output, update your working model instead of
  repeating stale text.
- Respect `.agentsignore` when assembling default context.

## Workflow

1. Ground yourself in the root docs and the artifact you are changing.
2. If the work is substantial, risky, or likely to need sign-off, create a
   plan in `.agents/plans/` from `.agents/templates/plan.md`.
3. Wait for a human `[x] APPROVED` in that plan before executing gated work.
4. Reuse `.agents/templates/` for intake, checkpoints, document review, and
   handoffs.
5. Put lasting lessons in `.agents/memory/` and short-lived continuity in the
   ignored `.agents/handoffs/`.

## Pack Use

`make pack` now includes the committed `.agents/` materials. When an assistant
is working from a pasted snapshot pack instead of direct repo access, start from
`.agents/templates/task-intake.md`.
