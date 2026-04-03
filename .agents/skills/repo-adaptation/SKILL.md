---
name: repo-adaptation
description: >
  Inspect a repository, determine whether it needs bootstrap or migration, and create or propose
  a standardized AGENTS.md plus .agents-based layout with compatibility guidance. Use this skill
  whenever a user wants to set up agent-facing files in a repo, migrate from legacy conventions
  like CLAUDE.md or .cursorrules to the modern AGENTS.md structure, audit a repository's agent
  configuration, or generate a migration report. Also use when someone mentions standardizing
  agent instructions across tools like Codex, OpenCode, or Cursor, even if they don't use the
  word "migration" or "adaptation."
license: MIT
compatibility:
  - codex
  - claude-code
  - opencode
metadata:
  author: pragsmike
  version: 1.0.0
  tags:
    - onboarding
    - automation
  tested-tools:
    - claude-code
---

# Repo Adaptation

Standardize a repository's agent-facing structure by inspecting what exists, classifying the current state, and either bootstrapping a fresh layout or conservatively migrating legacy conventions into a modern `AGENTS.md` plus `.agents/` structure.

## Purpose

Different AI coding tools have introduced their own instruction conventions: `CLAUDE.md`, `.cursorrules`, `.opencode/`, ad hoc prompt docs. This creates fragmentation when teams use multiple tools. The modern standard converges on `AGENTS.md` at the repo root with repo-local skills in `.agents/skills/`, and this skill automates the process of getting a repository to that state.

## Use this skill when

- A repository has no agent-facing files and needs initial scaffolding (bootstrap).
- A repository has legacy agent instructions (CLAUDE.md, .cursorrules, etc.) that should be mapped into a modern structure (migration).
- A team wants a migration report before standardizing repository conventions.
- Someone is onboarding a new tool (Codex, OpenCode, Cursor) and wants cross-tool compatibility.
- A user asks to "set up AGENTS.md" or "clean up agent config" or similar.

## Do not use this skill when

- The task is only to edit an existing skill's content (use skill-creator instead).
- The repository already matches the standard and only needs a minor one-line tweak.
- The user wants to write a specific prompt or instruction, not restructure the repo layout.

## Operating modes

This skill supports two modes. Default to **assessment mode** unless the user explicitly asks to make changes.

- **Assessment mode**: inspect and report only. Produces an inventory, classification, and migration plan without touching any files.
- **Implementation mode**: inspect, report, and apply approved changes. Creates or modifies files in the target repository.

Always confirm which mode the user wants before proceeding to the scaffold/migrate steps.

---

## Procedure

Follow these steps in order. The discovery and classification phases always run; the implementation phases depend on mode and approval.

### Step 1 — Inspect the repository

Run `scripts/inspect-repo.sh` against the target repository root. If the script is not executable or not available, perform the equivalent inspection manually.

The inspection looks for these files and directories:

- `AGENTS.md`
- `CLAUDE.md`
- `.cursorrules` or `.cursorignore`
- `.claude/` directory
- `.opencode/` directory and `opencode.json`
- `.agents/` directory
- `.github/copilot-instructions.md`
- Tool-specific instruction files (`.windsurfrules`, `.aiderignore`, etc.)
- Ad hoc guidance in `docs/`, `README.md`, `CONTRIBUTING.md`, or similar
- Existing handoff or memory markdown files

Record every match with its path, size, and a one-line summary of its contents.

### Step 2 — Classify the repository

Based on the inspection results, classify the repository into exactly one of these states:

| State | Criteria |
|---|---|
| **Greenfield** | No meaningful agent-facing files exist. |
| **Partial modern** | `AGENTS.md` or `.agents/` exists but the structure is incomplete. |
| **Legacy tool-specific** | Older conventions exist (CLAUDE.md, .cursorrules, etc.) and need mapping. |
| **Mixed/conflicted** | Multiple conventions coexist and may contradict each other. |

Write the classification and supporting evidence into the migration report (see Step 3).

### Step 3 — Produce a migration report

Use `templates/MIGRATION-REPORT.template.md` as the starting structure. Fill in:

- Repository classification
- Inventory of discovered files
- Proposed target structure (reference `references/target-structure.md`)
- Mapping of legacy content to new locations (reference `references/migration-rules.md`)
- Compatibility notes (reference `references/compatibility-matrix.md`)
- Unresolved ambiguities or decisions requiring human input

If in **assessment mode**, present the report and stop here. Ask the user whether they want to proceed to implementation.

### Step 4 — Bootstrap or migrate

**If greenfield or partial modern:** run `scripts/scaffold-standard-layout.sh` against the target repo root to create the directory structure and starter files. The script copies from `templates/` and does not overwrite existing files.

**If legacy tool-specific or mixed/conflicted:** migrate conservatively following `references/migration-rules.md`:

1. Map global repo guidance into `AGENTS.md` (create or append, never silently overwrite).
2. Map reusable workflows into `.agents/skills/<slug>/SKILL.md`.
3. Map prose continuity documents into `.agents/handoffs/`.
4. Map durable architectural guidance into `.agents/memory/`.
5. Preserve legacy files by default — add a deprecation comment at the top if appropriate, but do not delete.
6. If `CLAUDE.md` exists, keep it with a note pointing to `AGENTS.md` as the canonical source, unless explicitly told to remove it.
7. If multiple conflicting instruction files exist, summarize the conflict in the migration report and **stop for human review** before making destructive changes.

### Step 5 — Validate

After implementation, verify:

- `AGENTS.md` exists at the repo root and is well-formed.
- `.agents/skills/` exists (or a documented reason why not).
- No legacy files were deleted without explicit approval.
- Compatibility notes are present where older conventions remain.
- The migration report has been updated with actions taken.

Run `scripts/inspect-repo.sh` again and confirm the structure matches expectations.

### Step 6 — Finalize

Generate the final migration report using `scripts/generate-migration-report.sh` or by updating the report from Step 3. Present it to the user.

---

## Safety rules

These rules are non-negotiable and exist to prevent accidental data loss or broken workflows:

- **Never overwrite an existing `AGENTS.md`** without first showing the user a diff or summary of proposed changes and getting approval.
- **Never delete legacy files by default.** Deletion requires explicit user instruction.
- **Never invent repository-specific commands.** Inspect the repo's actual build/test/lint setup before referencing any commands in generated files.
- **Ask for approval before destructive consolidation** — merging or removing conflicting files requires human sign-off.
- **Prefer writing a migration report before making broad edits.** The report-first approach catches mistakes before they happen.
- **Preserve compatibility shims** when they serve tools that are actively in use.
- **If in doubt, stop and ask.** It's better to pause for a 10-second clarification than to make an incorrect structural change.

## Done criteria

The skill is complete when all applicable items are true:

- [ ] The repository has been inspected and classified.
- [ ] Legacy agent-facing files have been inventoried.
- [ ] A target structure has been proposed or created.
- [ ] `AGENTS.md` has been created or updated appropriately.
- [ ] `.agents/skills/` exists or a reason is documented for not creating it.
- [ ] Compatibility notes are documented where older conventions remain.
- [ ] A migration report has been produced.
- [ ] Unresolved ambiguities are explicitly listed.

---

## Bundled resources

| Path | When to read |
|---|---|
| `references/target-structure.md` | When proposing or creating the standard layout |
| `references/migration-rules.md` | When mapping legacy conventions to the new structure |
| `references/compatibility-matrix.md` | When documenting cross-tool compatibility |
| `templates/AGENTS.template.md` | When creating a new AGENTS.md |
| `templates/SKILL.template.md` | When creating starter repo-local skills |
| `templates/HANDOFF.template.md` | When creating handoff documents |
| `templates/MIGRATION-REPORT.template.md` | When generating the migration report |
| `scripts/inspect-repo.sh` | Step 1 — always |
| `scripts/scaffold-standard-layout.sh` | Step 4 — bootstrap or partial modern repos |
| `scripts/generate-migration-report.sh` | Step 6 — always |
