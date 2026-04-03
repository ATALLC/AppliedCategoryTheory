---
name: committee
description: >
  Run an adversarial committee deliberation using the bundled roster to explore
  decision spaces, surface assumptions, and map trade-offs. Use when the user
  asks for a committee deliberation, wants multiple conflicting lenses on a
  hard choice, or needs a structured decision-space map before acting.
license: MIT
compatibility:
  - codex
metadata:
  author: cyberneutics
  version: 0.1.0
  tags:
    - deliberation
  tested-tools:
    - codex
---

# Committee Deliberation Skill

Simulate a structured adversarial committee deliberation using the Cyberneutics
methodology. The committee explores problem spaces through genuine conflict
rather than convergent consensus, surfacing assumptions, trade-offs, and
blind spots.

## Situation resolution

The skill determines where to write output using this precedence:

1. **`--situation <path>`** — if the user provides this on invocation, use
   `<path>` as the situation directory directly.
2. **Config file** — read `situations_root` from `.agents/committee-config.yml`
   (path relative to repo root), then append `<topic-slug>/`.
3. **Default** — use `~/situations/<topic-slug>/`.

Once the situation directory is resolved:

- create the directory if it does not exist
- if `situation.md` does not exist, create it with the bundled template shape
- write deliberation output to `<situation-dir>/deliberations/`
- auto-detect scenarios when `<situation-dir>/scenarios/` contains
  `02-scenarios.md`

Rosters are bundled with this skill. They are part of the methodology, not the
situation output.

## When to use

- the user asks to run a committee on a question or situation
- the user wants multiple perspectives before choosing a direction
- the user needs remediation after a prior evaluation or critique
- the topic is sociotechnical, politically complex, or trade-off heavy
- the same situation already has scenarios and now needs a convergent
  deliberation phase

## Do not use this skill when

- the user wants a simple fact lookup
- the decision is trivial and does not merit multi-perspective debate
- the problem statement is too vague to support a real deliberation and the
  user is unwilling to clarify it

## The Committee Roster

Read the roster from `roster.md`. That file contains the full character
definitions, propensities, interaction dynamics, and voice notes.

If `roster.md` does not exist or is unreadable, tell the user and stop. Do not
fall back to a hardcoded roster.

## What the skill does

When invoked, the skill:

1. reads the roster from `roster.md`
2. resolves the situation directory and creates the deliberation record
3. initializes the committee with all characters and their propensities
4. presents the problem as stated by the user or asks for clarification
5. generates initial perspectives from each character
6. facilitates structured debate with characters responding to each other
7. writes the deliberation and resolution artifacts
8. surfaces assumptions, trade-offs, evidence requirements, and next steps

The canonical output is the deliberation record directory. The point is not
consensus. The point is a map of the decision space.

## Scenario-aware mode

When the situation directory contains scenarios, or the user provides an
explicit `scenario_context:`, the committee operates in scenario-aware mode.

How to detect:

- the resolved `<situation-dir>/scenarios/` contains `02-scenarios.md`
- the user includes `scenario_context: <path>`
- the user asks to deliberate across an existing scenario set

What changes:

1. read the scenario set from the specified directory
2. extend the charter with scenario context and scenario summaries
3. require each opening statement to engage with at least two scenarios
4. debate across futures rather than a single projected path
5. produce a scenario-aware resolution with robust actions, contingent actions,
   monitoring signals, and dismissed futures

For the full workflow, see
`references/deliberated-choice-workflow.md`.

## Deliberation requirements

The skill enforces these constraints:

- genuine conflict
- character consistency
- evidence proportionality
- explicit reasoning
- named trade-offs

## Standard deliberation format

### Phase 1: Initial Perspectives

Each character provides their take on the problem:

- what concerns them most
- what assumptions they see
- what questions need answering
- what evidence would change their view

### Phase 2: Structured Debate

Characters respond to each other:

- challenge claims lacking evidence
- question hidden assumptions
- identify missed perspectives
- force explicit trade-off reasoning

### Phase 3: Synthesis

The synthesis clarifies:

- what perspectives are in tension and why
- what trade-offs are unavoidable
- what evidence would resolve key uncertainties
- what the decision actually optimizes for

## Problem framing guidance

If the user provides a vague problem, prompt for specificity before running the
deliberation.

Good problem framing includes:

- the decision to be made
- the current situation
- constraints
- why the problem is hard

## Intervention patterns

Watch for these failure modes and correct them during generation:

- too polite
- evidence-free claims
- vague trade-offs
- premature consensus
- circular debate

When a failure mode appears, intervene before continuing. Disagreement is a
signal, not a defect.

## Resources

| Resource | When to Read | Why |
|---|---|---|
| `roster.md` | Always, before deliberation begins | Defines the committee itself |
| `references/deliberated-choice-workflow.md` | When scenarios already exist or scenario-aware mode is requested | Defines the fan-to-funnel composition |
| `references/character-propensity-reference.md` | When you need deeper character calibration | Extends the roster with richer interpretation notes |
| `references/adversarial-committees.md` | When the committee dynamics need re-grounding | Explains the adversarial methodology |
| `references/committee-setup-template.md` | When creating or reformatting the situation setup | Supplies the standard setup structure |
| `references/lesson-extraction-template.md` | When the user wants lessons or postmortem outputs | Provides a structured extraction template |
| `references/roberts-rules-forcing-function.md` | When deliberation quality degrades or converges too quickly | Provides stronger forcing functions for debate |

## Done criteria

The committee has produced a real decision-space map with distinct voices,
traceable tensions, explicit evidence requirements, and a resolution that does
not sand off meaningful dissents.
