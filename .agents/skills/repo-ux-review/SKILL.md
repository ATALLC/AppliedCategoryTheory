---
name: repo-ux-review
description: Review the usability, onboarding clarity, information architecture, and agent-adoption experience of this repo using the local UX rubric. Use when the user wants a scored UX review, a discoverability audit, or a remediation plan for how humans and agents navigate this repository.
---

# Repo UX Review

Use this skill to score how understandable and navigable this repository is for
both humans and agents.

This skill should produce two durable outputs under `.agents/`:

1. a scored UX review report under `.agents/memory/ux-reviews/`
2. a remediation plan under `.agents/plans/`

After writing both, offer to execute the remediation plan if the user wants.

## Use This Skill When

- the user asks for a UX, usability, onboarding, or discoverability review
- the user wants to know whether a repo makes sense to a newcomer
- the user wants to improve how easily humans or agents can find the right
  instructions, templates, skills, or bootstrap flows

## Read First

Read these before scoring:

- `README.md`
- `guides/README.md`
- `guides/audiences-and-user-paths.md`
- `guides/workstation-setup.md`
- `guides/install-agent-tooling.md`
- `SETUP_INSTRUCTIONS.md`
- `templates/README.md`
- `CATALOG.md`
- `docs/adoption-guide.md`
- `.agents/README.md`
- `references/ux-review-rubric.md`

Then read any additional entry documents the repo routes users toward, such as:

- `guides/adopt-into-repo.md`
- `guides/adoption-profiles.md`
- `scripts/README.md`
- `validation/README.md`

## Workflow

### 1. Establish scope and audience

Default scope is the current repository.

Start with the audience descriptions in `README.md`. Treat those as the
declared source of truth for who this repo is meant to serve.

Treat "audience" and "workstation environment" as separate axes. Check both:

- role/persona fit
- platform/environment fit

If the repo claims to serve people on multiple platforms or workstation shapes,
score whether it makes the supported and unsupported paths obvious.

Evaluate the repo from at least these perspectives:

- a new human user trying to determine whether this repo is for them
- a repo adopter trying to bootstrap agents into a target repo
- a user who does not yet have agent tooling installed
- a future agent maintaining this repo
- a user on macOS or Linux with Nix available
- a user on macOS or Linux without Nix
- a user on NixOS
- a user on Windows with WSL
- a user on native Windows if the repo names or implies that platform

If the lived onboarding paths in the repo do not line up with the audiences
claimed in `README.md`, score that as a real UX problem.

Do not only read the intended path. Also test likely first clicks, including:

- `README.md`
- `SETUP_INSTRUCTIONS.md`
- any legacy-looking or overly authoritative filename that a novice would
  plausibly choose first

### 2. Score the repo with the rubric

Use `references/ux-review-rubric.md` as the scoring source of truth.

For each rubric category:

- assign a score from `0` to `4`
- cite concrete repo evidence
- note blockers, friction, and strengths

Do not hand-wave. Tie every score to actual files, paths, wording, or missing
guidance.

### 3. Write the scored report

Use `assets/scored-report-template.md`.

Save the report to:

- `.agents/memory/ux-reviews/UX-REVIEW-YYYY-MM-DD.md`

If more than one review is created on the same day, append a short suffix.

### 4. Write the remediation plan

Use `assets/remediation-plan-template.md`.

Save the plan to:

- `.agents/plans/ux-remediation-YYYY-MM-DD.md`

If a plan for the same day already exists, append a short suffix.

The remediation plan should group work into:

- `P0` blockers
- `P1` onboarding friction
- `P2` clarity and polish

Each item should identify:

- the problem
- the user or agent affected
- the file(s) likely to change
- the intended fix
- how success will be verified

### 5. Offer to execute

After writing the report and remediation plan:

- summarize the top blockers and strongest parts
- tell the user where both files were written
- offer to execute the remediation plan now

Do not start remediation changes unless the user asks.

## Rules

- Score both human and agent experience, not just one.
- Distinguish "repo is useful" from "repo is understandable."
- Explicitly check whether prerequisites and installed-agent assumptions are
  clear.
- Explicitly check whether platform and environment applicability are clear:
  - macOS
  - Linux
  - NixOS
  - Windows with WSL
  - native Windows when relevant
- Call out when installable surfaces are mislabeled or easy to misread.
- Treat undefined onboarding terms as real UX failures:
  - `dev shell` / `devshell`
  - `agent tooling`
  - `MCP`
  - `interface`
- Treat misleading filenames, legacy redirects, and duplicate entry docs as
  real UX risks even when their content is technically correct.
- Treat absent guidance as a real finding, not a neutral state.
- Prefer high-signal evidence over exhaustive paraphrase.

## Resources

### `references/ux-review-rubric.md`

- scoring dimensions
- score meanings
- evidence expectations
- remediation-priority rules

### `assets/scored-report-template.md`

- template for the durable UX review report

### `assets/remediation-plan-template.md`

- template for the follow-on remediation plan
