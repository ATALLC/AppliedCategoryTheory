# Deliberated Choice: The Fan→Funnel Workflow

## What This Is

The deliberated choice composes two operations:
1. **Fan** (scenario generation): explore possible futures divergently
2. **Funnel** (committee deliberation): converge on a justified commitment

Neither alone is sufficient. Scenarios without selection is storytelling. Committee without exploration risks anchoring on the first framing. The composition — fan *then* funnel — converts ambiguity into commitment.

This document describes the **manual workflow**: how to chain `/scenarios` and `/committee` as separate steps with the user as editor between them. For a future composed skill that automates the pipeline, this workflow is the specification.

## When to Use

Use the deliberated choice when:
- The problem has genuine uncertainty about **what might happen** (not just which option is best)
- You want the committee to deliberate across explored futures rather than a single framing
- Stakes are high enough to justify the additional investment (scenario generation + committee)
- You suspect the "obvious" framing of the problem is missing important futures

## The Workflow

### Step 1: Generate Scenarios (Fan)

```
/scenarios [situation description]
```

Optionally with extensions or parameters:

```
/scenarios [situation] with: Regulator (lens: regulatory-pressure, explores: policy impact)
  axes: market-consolidation, technology-maturity
  horizon: 3 years
```

This produces `<situation-dir>/scenarios/` containing:
- `00-situation.md` — the framed situation
- `01-roster.md` — roster snapshot
- `01-parameters.md` — divergence axes used
- `02-scenarios.md` — the scenario set (one per narrator)
- `03-assessment.md` — coverage assessment

### Step 2: Review and Iterate (User as Editor)

Before feeding scenarios into the committee, the user reviews:

1. **Read `02-scenarios.md`**: Are the scenarios genuinely different? Are they specific enough? Do they surprise you?
2. **Read `03-assessment.md`**: Are there coverage gaps? Missing quadrants?
3. **Decide**:
   - **Proceed** — the scenario set is adequate
   - **Regenerate** — adjust parameters, add extensions, re-run `/scenarios`
   - **Edit** — manually adjust scenarios (add assumptions, refine narratives)

This step is where the user exercises editorial judgment. The scenarios are *proposals* — the user curates which get published to the committee.

### Step 3: Run Committee with Scenario Context (Funnel)

```
/committee [decision question] --situation <path-to-situation-dir>
```

The `scenario_context` parameter tells the committee to read the scenario set and deliberate across those futures. The committee:

1. **Reads the scenario set** from the specified directory
2. **Charters** with the scenario set as context — the charter references the scenarios explicitly
3. **Generates opening statements** where each character engages with the scenarios from their propensity:
   - Maya asks which scenario hides the worst political dynamics
   - Frankie asks which scenario best serves the mission
   - Joe asks which scenario resembles past situations
   - Vic demands evidence for or against each scenario's assumptions
   - Tammy traces second-order effects across scenarios
4. **Deliberates** — the structured debate now ranges across multiple futures rather than a single framing
5. **Resolves** — the resolution identifies which futures to optimize for, which to survive, and which to dismiss, with justification

### Step 4: Review Resolution (User as Editor)

The committee produces its standard output in `<situation-dir>/deliberations/`:
- `02-deliberation.md` — transcript
- `03-resolution.md` — resolution with votes

The user reviews the resolution. Optionally:
- Run `/review --situation <path-to-situation-dir>` for independent evaluation
- Run remediation if the evaluation score is below threshold
- Accept or reject the resolution

## How the Scenario Set Feeds into the Charter

The bridge between fan output and funnel input is the **charter**. When `scenario_context` is provided, the charter's structure changes:

```yaml
---
charter:
  goal: "[the decision question]"
  context: "Deliberating across scenario set generated in <situation-dir>/scenarios/."
  scenario_context: "<situation-dir>/scenarios/"
  scenarios_summary:
    - id: 1
      title: "scenario title"
      narrator: "Continuity"
      key_assumption: "the distinguishing assumption"
    - id: 2
      title: "scenario title"
      narrator: "Disruption"
      key_assumption: "the distinguishing assumption"
    # ...
  success_criteria:
    - "Resolution identifies which futures to optimize for and which to survive"
    - "Each committee member engages with at least 2 scenarios"
    - "Resolution specifies robust actions (good across multiple scenarios)"
    - "Resolution identifies scenario-dependent actions with trigger conditions"
  exit_conditions:
    - "Committee has mapped the decision space across scenarios"
    - "Resolution distinguishes robust commitments from scenario-dependent ones"
  deliverable_format: "Resolution Artifact + Decision Space Map (scenario-aware)"
---
```

The `scenarios_summary` field gives the committee quick reference without requiring it to re-read the full scenario narratives. The committee should still reference `02-scenarios.md` for detailed argumentation.

## What the Composed Output Looks Like

A deliberated choice resolution differs from a standard committee resolution in these ways:

| Aspect | Standard Committee | Deliberated Choice |
|--------|-------------------|-------------------|
| **Input** | Single problem framing | Multiple explored futures |
| **Debate** | "What should we do?" | "Given these futures, what should we do?" |
| **Resolution** | Commitment + rationale | Commitment + rationale + scenario-awareness |
| **Robustness** | Robust to perspectives | Robust to perspectives AND futures |
| **Early warnings** | From committee debate | From scenarios (early warning signs per future) |

A deliberated choice resolution should include:
- **Robust actions**: commitments that make sense across most scenarios
- **Scenario-dependent actions**: commitments contingent on which future materializes, with trigger conditions
- **Monitoring plan**: which early warning signs to watch, from which scenarios
- **Dismissed futures**: which scenarios the committee judged implausible or unactionable, with justification

## Example Workflow

**Situation**: "Our 50-person B2B SaaS company was approached about acquisition at 3x revenue. 18 months runway. Team is split."

**Step 1**: `/scenarios acquisition-approach`
- Continuity scenario: "The Slow Fade" — we decline, runway shortens, no dramatic change, but competitive position erodes slowly
- Disruption scenario: "The Talent Exodus" — declining the offer signals instability, key engineers leave for the acquirer
- Opportunity scenario: "The Independence Dividend" — declining frees us to pursue a pivot the acquirer would have killed
- Constraint scenario: "The Funding Drought" — Series B market tightens, 18 months becomes 12, acquisition offer doesn't come again

**Step 2**: User reviews. Notices no scenario explores "accept and integrate well." Adds: "What about the scenario where the acquisition goes well?" Decides this is the committee's job — the committee can argue for acceptance. Proceeds.

**Step 3**: `/committee Should we accept or decline the acquisition offer? --situation <path-to-acquisition-approach-situation-dir>`
- Committee deliberates across all four scenarios
- Maya: "The Talent Exodus is the real risk — but it's also leverage. If we decline, we need a retention plan within 30 days."
- Vic: "Show me the data on post-acquisition retention rates in our sector. The acquirer's track record matters more than our scenarios."
- Resolution: "Decline with conditions — negotiate a partnership instead of acquisition. Implement retention plan. Revisit in 6 months if Funding Drought indicators materialize."

**Step 4**: User reviews resolution. Runs `/review`. Accepts with modifications.

## Pipeline View

The full resource equation chain:

```
# Fan half
raw-problem → situation  [FrameSituation]
situation × scenario-roster × scenario-parameters → scenario-set  [Fan]
  {catalytic: scenario-roster, scenario-parameters}
scenario-set × scenario-rubric → scenario-set  [AssessScenarios]
  {catalytic: scenario-rubric; enriches: scenario-scores}
scenario-set × coverage-criteria → adequate-set + gaps-identified  [CoverageGate]
  {catalytic: coverage-criteria}

# Bridge
adequate-set → charter  [DraftCharter]

# Funnel half
charter × character-propensities → roster + convening  [Convene]
  {catalytic: character-propensities}
charter × roster × convening × adequate-set × character-propensities × roberts-rules → transcript  [Deliberate]
  {catalytic: character-propensities, roberts-rules}
transcript × charter → resolution  [Resolve]  {catalytic: charter}

# Evaluation
transcript × evaluation-rubrics × charter → evaluation  [Evaluate]
  {catalytic: evaluation-rubrics, charter}
evaluation × remediation-threshold → passed-evaluation + needs-remediation  [QualityGate]
  {catalytic: remediation-threshold}

# Human gate
passed-evaluation × resolution → accepted-resolution + rejected-resolution  [HumanGate]
  {discard: rejected-resolution}
```

The user's editorial step (Step 2) is the HumanGate between CoverageGate and DraftCharter — the point where the fan's output is curated before entering the funnel.

## Confidence Propagation

Three confidence propagation rules apply to the composed pipeline:

- **Confidence can only degrade**: A Medium-confidence scenario set cannot produce a High-confidence resolution, regardless of committee quality. Scenario quality sets the ceiling.
- **Provenance can only accumulate**: The resolution carries provenance from both fan (which scenarios, which assumptions) and funnel (which characters, which evidence demands). The full chain of custody is richer than either operation alone.
- **Content transforms**: Situation → scenarios → transcript → resolution. Each stage produces genuinely new content.

---

**Related artifacts**:
- [Scenario Generation](./scenario-generation.md) — the fan technique
- [Adversarial Committees](./adversarial-committees.md) — the funnel technique

