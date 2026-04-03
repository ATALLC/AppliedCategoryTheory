# Repo UX Review Rubric

Use this rubric to score the usability and onboarding experience of `ai-tools`
or another repo reviewed with this local skill.

## Scoring Scale

Apply the same scale to every category:

- `0` Missing or misleading
  - the repo gives no usable guidance or points users in the wrong direction
- `1` Poor / high-friction
  - partial signals exist, but a new user is likely to get lost or blocked
- `2` Mixed / incomplete
  - the core path exists, but important questions or transitions are unclear
- `3` Good
  - most users can orient themselves and proceed without much confusion
- `4` Strong
  - the path is obvious, well-routed, and resilient to common misunderstandings

## Category Set

Score each category from `0` to `4`.

### 1. Audience Fit and Value Proposition

Question:

- Can a user quickly tell whether this repo is for them and what it provides?

Look for:

- alignment with the audience descriptions declared in `README.md`
- clear audience statements
- problem framing
- explanation of what the repo is and is not
- differentiation from adjacent repos

### 2. Platform and Environment Coverage

Question:

- Can a user tell whether the docs apply to their workstation environment and
  which path to follow?

Look for:

- explicit handling of macOS, Linux, NixOS, Windows with WSL, and native
  Windows when relevant
- distinction between "supported", "supported with caveats", and
  "not currently documented"
- low ambiguity about whether Nix is optional, recommended, or required
- environment-to-path mapping rather than prose that assumes one default

### 3. Start-Here Discoverability

Question:

- Are the first onramps obvious and easy to locate?

Look for:

- top-level start-here sections
- audience-based and task-based routing
- explicit read order
- low ambiguity about where a newcomer should begin

### 4. Problem-to-Help Routing

Question:

- If a user has a concrete problem, can they find the right guide or surface?

Look for:

- task-oriented navigation
- guide naming clarity
- obvious links between common problems and solution docs
- absence of dead-end directories that require reverse-engineering

### 5. Agent Adoption and Bootstrap Clarity

Question:

- Is it obvious that this repo helps bootstrap a target repo into using agents?

Look for:

- visible adoption path
- clear explanation of templates, skills, and bootstrap flows
- explanation of what happens in the target repo
- obvious next action for a repo adopter

### 6. Prerequisites and Installed-Agent Assumptions

Question:

- Is it clear what requires an installed agent or local tooling, and what does
  not?

Look for:

- prerequisite statements
- explicit distinction between reading docs and running agent-driven workflows
- clear path for someone who does not yet have agents installed
- avoidance of hidden assumptions

### 7. Terminology and Concept Definitions

Question:

- Are key onboarding terms defined before the repo relies on them?

Look for:

- definition of `dev shell` / `devshell`
- definition of `agent tooling`
- explanation of what `MCP` means in practical terms
- clear distinction between local CLI tools, wrappers, and integrations
- low risk that a novice misreads a term as broader or narrower than intended

### 8. Installable Surface Labeling

Question:

- When looking at templates, installable skills, prompts, scripts, or examples,
  is it clear what each surface is for?

Look for:

- strong labeling of installable versus reference-only assets
- low risk of confusing `templates/`, `library/`, and repo-local `.agents/`
- explicit destination-path explanation where source and target differ

### 9. Instruction Clarity and Actionability

Question:

- Are the instructions concrete, clear, and easy to follow?

Look for:

- copyable commands
- examples
- unambiguous verbs
- guidance on decisions or forks in the path

### 10. Information Architecture and Naming

Question:

- Do the directory structure and filenames help users predict where things live?

Look for:

- clean separation of concerns
- intuitive top-level layout
- low cognitive load in file and directory names
- absence of misleading historical residue

### 11. Legacy and Decoy Entry Point Risk

Question:

- Do historical filenames or overlapping entry docs misdirect newcomers?

Look for:

- legacy setup files that still look authoritative
- multiple "start here" docs with conflicting or overlapping claims
- redirects that behave like alternate canons
- filenames that pull a novice into the wrong path before the repo explains
  what is current

### 12. README and Guide Completeness

Question:

- Do the README files and guiding docs cover the repo's main user journeys?

Look for:

- top-level README completeness
- subdirectory README coverage
- consistency between routing docs and actual content
- enough detail to proceed without tribal knowledge

### 13. Agent-Maintainer Ergonomics

Question:

- Can a future agent maintaining this repo find the active instructions,
  continuity notes, local skills, and operating context?

Look for:

- quality of `AGENTS.md`
- `.agents/` discoverability
- continuity hygiene
- local skill discoverability
- obvious separation between committed memory and local-only state

### 14. Trust, Safety, and Expectation Management

Question:

- Does the repo set realistic expectations about safe use, limits, and
  approval-sensitive actions?

Look for:

- explanation of guardrails
- warnings about incomplete automation or manual follow-up
- accurate claims about what assets do
- low risk that a user over-trusts a workflow

## Overall Score

1. Sum all category scores.
2. Divide by the maximum possible score.
3. Convert to a percentage.

With 14 categories, maximum raw score is `56`.

Suggested interpretation:

- `90-100%`: strong
- `75-89%`: usable with moderate friction
- `60-74%`: mixed; onboarding or discoverability problems need work
- `<60%`: poor; major structural or clarity issues block confident adoption

## Priority Rules

Use the scores to shape remediation:

- any category scored `0` or `1` is a candidate `P0` or `P1`
- any broken core onramp is `P0`
- problems that misroute users or hide prerequisites are at least `P1`
- polish-only wording or naming issues are usually `P2`

## Required Evidence in the Report

For each category include:

- score
- concrete evidence with file paths
- why that evidence helps or hurts
- a concise remediation direction if the score is below `3`

The report should also include:

- top three strengths
- top three blockers
- whether the onboarding path is segmented clearly by workstation environment
- whether key onboarding terms are defined early enough for a novice reader
- whether the actual onboarding paths match the audiences claimed in `README.md`
- a short verdict on whether a new user is likely to succeed
