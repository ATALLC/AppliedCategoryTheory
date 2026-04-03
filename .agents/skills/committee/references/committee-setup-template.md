# Committee Setup Template

## Overview

This document provides ready-to-use prompt templates for initializing and running adversarial committee deliberations. Copy, customize, and use these templates to get started quickly.

## Template Selection Guide

**Choose based on your situation:**

- **Template A (Standard)**: Most common use case, balanced detail
- **Template B (Concise)**: Time-limited, need quick perspectives
- **Template C (High-Stakes)**: Critical decision, maximum rigor
- **Template D (Domain-Specific)**: Recurring problem type (hiring, strategy, etc.)

## Template A: Standard Committee Initialization

**Use when**: Normal deliberation, balanced depth and time

```
I need an adversarial committee deliberation using the Cyberneutics methodology.

COMMITTEE ROSTER:
[Paste the character definitions from roster.md, or reference it directly
if your tool can read files. Each character needs: name, propensity, key question,
what they catch, and failure mode.]

DELIBERATION REQUIREMENTS:
- Perspectives must genuinely conflict, not converge to diplomatic consensus
- Each character must stay true to their propensity throughout
- Claims require evidence proportional to stakes
- Reasoning chains must be explicit (no skipped steps)
- Trade-offs must be named specifically, not hand-waved

THE PROBLEM:

[Decision to be made]
[Your decision placeholder]

[Current situation]
[Your context placeholder]

[Constraints]
[Your constraints placeholder]

[Success criteria]
[Your success criteria placeholder - what does good look like?]

[Why this is hard]
[What makes this decision difficult - competing values, uncertainty, past failures, etc.]

INSTRUCTIONS:
1. Each committee member should provide their initial perspective (2-3 paragraphs)
2. Perspectives should surface different concerns, not converge to agreement
3. Make assumptions explicit
4. Identify what evidence would change your position

Please begin with initial perspectives from all five members.
```

## Template B: Concise Committee (Time-Limited)

**Use when**: Need quick perspectives, under 15 minutes

```
Adversarial committee on this decision, 5 perspectives maximum conflict:

DECISION: [One sentence]

CONTEXT: [2-3 sentences max]

COMMITTEE:
[List each character from roster.md with name, propensity, and focus area.
One line each.]

REQUIREMENTS:
- 1 paragraph each
- Genuine conflict (no polite agreement)
- Explicit assumptions
- Testable predictions where possible

Go.
```

## Template C: High-Stakes Deliberation

**Use when**: Critical decision, willing to invest significant time, need maximum rigor

```
CRITICAL DECISION DELIBERATION - HIGH RIGOR PROTOCOL

I need a formal adversarial committee deliberation for a high-stakes decision.

COMMITTEE COMPOSITION:
[Paste the full character definitions from roster.md]

PROCEDURAL FRAMEWORK:
This deliberation will use simplified Robert's Rules of Order:
- Specific motions (not vague suggestions)
- Motion must be seconded
- Structured debate with speaking order
- Points of order for unsupported claims
- Amendments must be specific
- Vote on each motion

EVALUATION CRITERIA:
This deliberation will be independently evaluated on:
- Reasoning completeness (are chains explicit?)
- Adversarial rigor (genuine stress-testing?)
- Assumption surfacing (hidden premises made visible?)
- Evidence standards (claims supported?)
- Trade-off explicitness (what's sacrificed acknowledged?)

THE DECISION:
[Comprehensive problem framing - use all elements from Template A]

CROSS-SCENARIO LESSONS:
[If applicable, inject relevant lessons from past deliberations]

Example lesson format:
"In [past scenario], we learned that [pattern]. Application: [how to apply]."

PHASE 1 INSTRUCTIONS:
Begin with initial perspectives from all committee members. Then I will facilitate structured debate using Robert's Rules.

Each member should:
- State their position clearly
- Identify their key concerns
- Name their assumptions explicitly
- Specify what evidence would change their view
- Anticipate objections from other perspectives

Proceed with Phase 1.
```

## Template D: Domain-Specific (Example: Hiring Decisions)

**Use when**: Recurring problem type where you've built domain knowledge

```
HIRING DECISION COMMITTEE - CALIBRATED PROTOCOL

DECISION: [Specific hire - role, level, count]

CONTEXT:
- Team composition: [current state]
- Project demands: [roadmap, deadlines]
- Budget: [constraints]
- Past hiring outcomes: [relevant history]

COMMITTEE (HIRING-CALIBRATED):
[Start from the roster in roster.md, then narrow each character's
focus to the hiring domain. Example domain-specific focus areas:]

MAYA - Focus on: team dynamics and politics, who this hire
  threatens/empowers, hidden stakeholder agendas, power dynamics

FRANKIE - Focus on: mission alignment (building capability vs buying
  delivery?), talent development commitments, cultural fit and values

JOE - Focus on: past hiring mistakes in similar contexts, mentorship
  bandwidth, onboarding capacity, what made previous hires succeed/fail

VIC - Focus on: actual productivity data (not vibes), measurable
  differences between options, cost-benefit with numbers

TAMMY - Focus on: how this hire affects team composition dynamics,
  feedback loops (future hiring easier/harder?), systemic implications

LESSONS FROM PAST HIRING DELIBERATIONS:
[Inject domain-specific lessons here]

PROCEED WITH DELIBERATION
First: Each member's initial take
Then: Structured debate on specific motion
```

## Customization Guide

### Modifying Character Propensities

The standard roster lives in `roster.md`. If it doesn't fit your context, adjust propensities for a specific domain:

**Example: Technical Architecture Decision**
```
MAYA (Security/Risk Focus): "What attack vectors does this open?"
FRANKIE (Simplicity Guardian): "Are we over-engineering this?"
JOE (Operational Reality): "Can we actually maintain this?"
VIC (Performance Prosecutor): "Show me the benchmarks"
TAMMY (Integration Thinker): "How does this affect the rest of the system?"
```

**Example: Partnership Decision**
```
MAYA (Due Diligence): "What aren't they telling us?"
FRANKIE (Strategic Alignment): "Does this serve our actual goals?"
JOE (Past Partnership Failures): "Remember what happened with X?"
VIC (Contract Scrutiny): "What specifically are the terms?"
TAMMY (Ecosystem Effects): "How does this change our other relationships?"
```

### Adding a Chair/Moderator

For highly structured debates, add a sixth role:

```
CHAIR (Procedural Enforcer)
- Role: Enforce Robert's Rules, manage speaking order, rule on points of order
- Does NOT take positions on the decision
- Ensures all voices heard
- Calls votes when debate is complete
- Maintains transcript/minutes
```

### Scaling the Committee

**Smaller (3 members)** for simpler problems:
```
Core trio (from roster.md):
- Evidence Prosecutor
- Systems Thinker
- One domain-specific perspective (choose based on problem: political, values, or institutional-memory)
```

**Larger (6-7 members)** for very complex problems:
```
Standard 5 + domain experts:
- Legal/Compliance perspective
- Customer/User advocate
- Financial/Budget guardian
- Technical specialist
```

**Warning**: Beyond 7, deliberations become unwieldy. If you need more perspectives, consider multiple sequential committees.

## Problem Framing Checklist

Before initializing committee, ensure you can answer:

- [ ] **What specific decision** needs to be made? (Not "should we do X?" but "should we do X by Y date given Z constraints?")
- [ ] **What's the current situation?** (Context someone dropped into this would need)
- [ ] **What constraints apply?** (Budget, time, resources, dependencies)
- [ ] **What does success look like?** (How will we know if this was right?)
- [ ] **Why is this hard?** (What makes this non-obvious? What are competing values/priorities?)
- [ ] **What have we tried before?** (Relevant history, past failures, lessons learned)
- [ ] **What assumptions am I already making?** (Surface your own biases before asking committee)

If you can't answer these, the committee will struggle. Do the pre-work.

## Mid-Deliberation Intervention Templates

### When Debate Gets Too Polite

```
INTERVENTION: The current discussion is too diplomatic. This suggests premature convergence to comfortable consensus.

Required: Each character must now argue AGAINST the emerging consensus from their propensity. For each character in the roster, formulate a challenge based on their documented propensity and key question.

Show me what we're missing by being too agreeable.
```

### When Claims Lack Evidence

```
POINT OF ORDER: [Character] just claimed [specific claim] without supporting evidence.

The evidence-focused character should challenge this claim with:
- What specific evidence supports this?
- What would constitute counter-evidence?
- Is this falsifiable?
- Are we confusing correlation with causation?

[Character] must either provide evidence or withdraw/soften the claim.
```

### When Reasoning Jumps Steps

```
POINT OF ORDER: The reasoning just jumped from [premise] to [conclusion] without showing the intermediate steps.

Please make the reasoning chain explicit:
- What are the intermediate claims?
- What evidence supports each step?
- What assumptions connect the steps?
- Where could this chain break?
```

### When Trade-offs Are Vague

```
INTERVENTION: Trade-offs are being mentioned vaguely ("pros and cons exist") without specificity.

Required: Quantify what we're trading off under each option:

Option A gives us: [specific gains] but costs us: [specific losses]
Option B gives us: [specific gains] but costs us: [specific losses]

Use numbers/timelines/concrete outcomes, not abstract "benefits."
```

### When Debate Goes Circular

```
MOTION TO CALL THE QUESTION:

We've been debating this point for [X minutes/exchanges] and are repeating arguments.

Time to vote on the current motion and move forward.

All in favor of ending debate? [Requires 2/3 to pass]

If passes: Vote on the motion.
If fails: What new information/perspective is needed to break the loop?
```

## Post-Deliberation Capture Template

After deliberation completes, capture these elements:

```
DELIBERATION SUMMARY: [Title]
Date: [Date]
Decision: [What was decided]

MOTIONS AND VOTES:
- Motion 1: [Description] - Vote: [Y-N]
- Motion 2: [Description] - Vote: [Y-N]
[etc.]

KEY ARGUMENTS:
For: [Main supporting arguments]
Against: [Main opposing arguments]

TRADE-OFFS IDENTIFIED:
- If we choose X: gain [A], lose [B]
- If we choose Y: gain [C], lose [D]

ASSUMPTIONS SURFACED:
- [Assumption 1]
- [Assumption 2]
[etc.]

EVIDENCE REQUIREMENTS IDENTIFIED:
- Need data on: [X]
- Need verification of: [Y]
[etc.]

EVALUATION SCORES (if conducted):
- Reasoning Completeness: [X/3]
- Adversarial Rigor: [X/3]
- Assumption Surfacing: [X/3]
- Evidence Standards: [X/3]
- Trade-off Explicitness: [X/3]
Average: [X/3]

LESSONS EXTRACTED:
- What worked: [Pattern that produced good results]
- What failed: [Pattern that should be avoided]
- Application: [How to apply in future scenarios]

NEXT ACTIONS:
- [Specific action items based on decision]
```

## Common Setup Mistakes

### Mistake 1: Problem framing too vague

**Bad**: "Should we hire more people?"

**Good**: "Should we hire two junior engineers or one senior engineer, decision by Friday, budget locked at $X, tight Q3 deadlines, limited mentorship bandwidth?"

**Why it matters**: Vague framing lets committee debate abstractions instead of your actual constraints.

### Mistake 2: Not specifying adversarial requirement

**Bad**: "Give me different perspectives"

**Good**: "Perspectives must genuinely conflict. No diplomatic convergence. Characters should disagree strongly about what matters most."

**Why it matters**: Without explicit adversarial requirement, LLM defaults to generating polite synthesis.

### Mistake 3: Missing the "why is this hard" section

**Bad**: Just stating the decision and constraints

**Good**: Explicitly naming what makes this difficult (competing values, past failures, uncertainty, stakeholder conflicts)

**Why it matters**: Helps committee focus on the actual source of difficulty rather than surface-level details.

### Mistake 4: Using the template verbatim without customization

**Bad**: Copy-paste template with minimal modification

**Good**: Adapt character propensities to your domain, inject relevant lessons, specify your actual constraints

**Why it matters**: Generic templates produce generic deliberations. Customization produces relevant insights.

### Mistake 5: Not preparing for intervention

**Bad**: Paste template, hope for the best, accept whatever comes back

**Good**: Monitor deliberation, ready to intervene with templates from "Mid-Deliberation Intervention" section when failure patterns emerge

**Why it matters**: First attempt rarely produces perfect deliberation. Active facilitation improves quality dramatically.

## Integration with Other Artifacts

**After setup, use**:
- [Robert's Rules as Forcing Functions](./roberts-rules-forcing-function.md) for procedural structure
- [Independent Evaluation Protocols](./independent-evaluation.md) for quality assessment
- [Cross-Scenario Learning](./cross-scenario-learning.md) for lesson injection

**For examples, see**:
- [Quick Start Guide](./quick-start-guide.md) for minimal viable version
- [Example Transcripts](./examples/) for worked cases

---

**Remember**: Templates are starting points, not scripts. Adapt them to your context. The goal is rigorous deliberation, not template compliance.

If a template isn't working, modify it. If you develop better templates, share them.
