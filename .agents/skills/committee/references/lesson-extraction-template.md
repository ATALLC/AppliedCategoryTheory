# Lesson Extraction Template

## Purpose

This template helps you systematically extract lessons from committee deliberations so they can be stored, searched, and injected into future scenarios.

**Use this after**:
- Committee deliberation completes
- Independent evaluation is done
- You've made your decision

**Time required**: 10-15 minutes per deliberation

## The Lesson Document Template

Copy this template for each lesson you extract:

```markdown
# [Descriptive Lesson Name]

**Lesson ID**: [YYYY-MM-scenario-keyword] (e.g., 2024-11-hiring-juniors)
**Date Extracted**: [Date]
**Source Scenario**: [Brief description of the problem]
**Category**: [Reasoning/Evidence/Procedure/Character/Trade-offs/Domain]
**Stability**: [Tentative/Validated/Deprecated]

## Context

### The Problem
[What decision were you making? What made it difficult?]

### What Happened
[What specific pattern occurred during deliberation? Quote from transcript if relevant.]

### Evaluation Result
[What did independent evaluation say? Include specific scores and feedback.]

## The Pattern

### What Worked (or Failed)
[Describe the pattern clearly and specifically]

### Why It Happened
[Your theory about why this pattern emerged. What caused it?]

### Evidence
[What from the transcript supports this? What evaluation scores indicate it?]

## Application Rule

### When This Applies
[Under what conditions is this lesson relevant?]

### How to Apply
[Specific instructions: "When X happens, do Y"]

### What to Watch For
[How do you recognize this situation in future deliberations?]

## Limitations

### When This DOESN'T Apply
[Edge cases, exceptions, contexts where this lesson is wrong]

### Cautions
[What could go wrong if this is misapplied?]

## Related Lessons

- [Link to related lesson 1]
- [Link to related lesson 2]

## Revision History

- [Date]: Initial extraction
- [Date]: Updated based on [reason]
```

## Lesson Extraction Workflow

### Step 1: Identify Patterns (5 minutes)

Review the deliberation and evaluation. Look for:

**Successes** (what scored high):
- ✅ Which arguments were most rigorous?
- ✅ Which procedures prevented problems?
- ✅ Which character interactions were productive?
- ✅ Which trade-offs were well-articulated?

**Failures** (what scored low):
- ❌ Where did reasoning skip steps?
- ❌ Where did evidence standards slip?
- ❌ Where were assumptions hidden?
- ❌ Where did debate become theatrical?

**Don't extract lessons from everything.** Focus on:
- Patterns that meaningfully affected quality (evaluation scores)
- Insights that would transfer to other scenarios
- Mistakes you don't want to repeat

### Step 2: Write the Lesson (5-10 minutes)

Use the template above. Be specific:

**Bad** (too vague):
```
LESSON: Be more rigorous about evidence

When making claims, try to provide evidence.
```

**Good** (actionable):
```
LESSON: Political concerns require falsifiability criteria

PATTERN: Maya raised concern that "CTO will see this as threat to 
their authority." This was unfalsifiable speculation that derailed 
debate for 10 minutes.

APPLICATION: When Maya (or anyone) raises political concerns, Vic 
should immediately ask: "What specific evidence would prove/disprove 
this? What would we observe if this concern is valid?"

EXAMPLE: "If CTO objects to this proposal by EOW, concern is validated. 
If not, we proceed without assuming hidden opposition."
```

### Step 3: Categorize and File (2 minutes)

**Category types**:

- **Reasoning**: Patterns about logical completeness, reasoning chains
- **Evidence**: Patterns about evidentiary standards, claims support
- **Procedure**: Patterns about Robert's Rules, debate structure
- **Character**: Patterns about how committee members interact
- **Trade-offs**: Patterns about articulating what's sacrificed
- **Domain**: Patterns specific to hiring/strategy/partnerships/etc.

**File organization**:
```
lessons/
├── by-category/
│   ├── reasoning-completeness.md (append related lessons here)
│   ├── evidence-standards.md
│   ├── procedural-discipline.md
│   ├── character-interactions.md
│   ├── trade-off-explicitness.md
│   └── assumption-surfacing.md
├── by-domain/
│   ├── hiring-decisions.md
│   ├── product-strategy.md
│   ├── resource-allocation.md
│   └── partnerships.md
├── by-scenario/
│   ├── 2024-11-hiring-juniors.md (full deliberation record)
│   └── 2024-12-product-pivot.md
└── index.md (searchable summary of all lessons)
```

## Example Lessons

### Example 1: Success Pattern

```markdown
# Quantifying Trade-offs Makes Values Conflicts Decidable

**Lesson ID**: 2024-11-hiring-quantify
**Date Extracted**: 2024-11-15
**Source Scenario**: Should we hire 2 junior engineers or 1 senior?
**Category**: Trade-offs
**Stability**: Validated (worked in 3+ scenarios)

## Context

### The Problem
Hiring decision with competing values: Frankie wanted talent development 
(2 juniors), Joe wanted delivery reliability (1 senior). Debate was 
circular—both had valid points, no way to choose.

### What Happened
After 15 minutes of values debate, someone said: "What if we quantify 
what we're actually trading?"

The team produced:
- 2 seniors: +30% immediate productivity, -100% talent pipeline
- 2 juniors: -30% immediate productivity, +100% talent pipeline
- 1 of each: -15% immediate productivity, +50% talent pipeline

The decision became clear immediately: given current project urgency, 
we couldn't afford -30% productivity, but -15% was manageable.

### Evaluation Result
Trade-off explicitness score jumped from 1.5 to 2.8 after quantification.

## The Pattern

### What Worked
When committee members argue from incompatible values (speed vs. 
development, risk vs. opportunity, short-term vs. long-term), force 
quantification of what's gained and lost under each option.

### Why It Happened
Values conflicts feel intractable because they're abstract. Numbers 
make the trade-off concrete enough to evaluate against actual priorities.

### Evidence
- Transcript shows 15min of circular debate before quantification
- 5min of decisive discussion after
- Evaluation score improved significantly
- Decision felt more defensible afterward

## Application Rule

### When This Applies
- Committee members arguing from different values
- Debate going in circles with both sides making valid points
- "We need to balance X and Y" without specifics
- Feeling stuck between equally-compelling arguments

### How to Apply
1. Stop the values debate
2. Ask: "What specifically do we gain/lose under each option?"
3. Force quantification (percentages, timelines, concrete outcomes)
4. Compare quantities against actual priorities
5. Decide based on which trade-off is acceptable

### What to Watch For
Phrases that trigger this:
- "We need to balance..."
- "Both perspectives are valid..."
- "It depends on what we value..."
- Frankie vs. Joe conflicts especially

## Limitations

### When This DOESN'T Apply
- Some values aren't quantifiable (ethical constraints, legal boundaries)
- Very early stage decisions where numbers are pure speculation
- When the real problem is missing information, not values conflict

### Cautions
- Don't let quantification give false precision
- Some things genuinely can't be reduced to numbers
- Quantification is a tool for clarity, not a decision oracle

## Related Lessons
- [Evidence Standards for Quantitative Claims](../by-category/evidence-standards.md#quantification)
- [When Vic Should Challenge Numbers](../by-category/character-interactions.md#vic-prosecutor)
```

### Example 2: Failure Pattern

```markdown
# Historical Analogies Need Explicit Similarity Analysis

**Lesson ID**: 2024-11-hiring-analogy
**Date Extracted**: 2024-11-15
**Source Scenario**: Should we hire 2 junior engineers or 1 senior?
**Category**: Reasoning
**Stability**: Validated (seen in 5+ scenarios)

## Context

### The Problem
Joe cited: "We tried hiring juniors in 2022 and it failed."

### What Happened
This assertion stopped debate for 10 minutes while committee unpacked 
what Joe meant. Eventually discovered:
- 2022: hired 2 juniors, no allocated mentorship time
- Both juniors left within 8 months citing lack of support
- 2022 context: extremely tight deadlines, no senior bandwidth

Current proposal: hire 2 juniors WITH 20% allocated mentorship time.

Key difference: current proposal addresses the specific failure mode.
But this only became clear after extensive back-and-forth.

### Evaluation Result
Reasoning completeness: 1.2/3.0
Evaluator noted: "Historical precedent cited without explaining what 
failed, why it failed, or what's different now."

## The Pattern

### What Failed
Joe cited historical failure as argument against current proposal 
without specifying:
- What actually failed in 2022
- What the root causes were
- What's similar between then and now
- What's different
- Whether current proposal addresses the failure mode

### Why It Happened
"We tried this before and it failed" sounds like complete reasoning. 
But it skips critical steps about what "this" means and whether it's 
actually the same "this."

### Evidence
- Transcript shows 10 minutes to unpack a 1-sentence claim
- Evaluation flagged reasoning incompleteness
- Similar pattern seen in 5 other deliberations

## Application Rule

### When This Applies
Any time someone cites historical precedent:
- "We tried this in [year]..."
- "Remember what happened with [project]..."
- "This is just like [past situation]..."
- Joe doing Joe things

### How to Apply
Require explicit answers to five questions:

1. **What specifically failed?** (Not "the project failed" but "juniors 
   left due to lack of mentorship")

2. **Why did it fail?** (Root causes, not symptoms. "Tight deadlines 
   prevented mentorship allocation")

3. **What's similar now?** (We still have tight deadlines)

4. **What's different now?** (Current proposal allocates mentorship 
   time; 2022 didn't)

5. **What does similarity/difference imply?** (If deadlines still 
   prevent mentorship, allocated time won't help. Need to verify 
   deadlines allow the allocation.)

### What to Watch For
- Any historical reference
- Joe (institutional memory is his role)
- Words: "tried," "remember," "last time," "didn't work"

## Limitations

### When This DOESN'T Apply
- Sometimes "we tried this and it failed" is enough (if everyone knows 
  the details)
- Very clear cases where analogy is obvious
- When time pressure requires accepting incomplete reasoning

### Cautions
- Don't demand perfect historical analysis for every reference
- Five questions are framework, not script—adapt to context
- Balance rigor with time available

## Related Lessons
- [Vic Should Challenge Unsupported Claims](../by-category/character-interactions.md#vic-challenges)
- [Reasoning Chain Completeness](../by-category/reasoning-completeness.md#chains)
```

### Example 3: Procedural Pattern

```markdown
# Split Multi-Contingency Amendments

**Lesson ID**: 2024-12-strategy-split
**Date Extracted**: 2024-12-03
**Source Scenario**: Should we pursue enterprise clients?
**Category**: Procedure
**Stability**: Validated (worked in 3 scenarios)

## Context

### The Problem
Product strategy decision: pursue enterprise clients or stay focused 
on SMB market?

### What Happened
Tammy proposed amendment: "Pursue enterprise IF revenue projections 
exceed $500K AND we can maintain values compatibility."

Debate stalled because this contains two separate contingencies:
1. Revenue threshold ($500K)
2. Values compatibility

Joe raised point of order: "These are separate questions requiring 
separate justification."

### Evaluation Result
After splitting:
- Revenue threshold: revealed this was actually guesswork, needed 
  better modeling
- Values compatibility: revealed this was unfalsifiable as stated, 
  needed concrete criteria

Each got proper debate. Result: better decision.

## The Pattern

### What Worked
When amendment contains multiple contingencies (IF X AND Y), split 
into separate motions that can be debated independently.

### Why It Happened
Multi-contingency amendments let weak reasoning hide behind strong 
reasoning. "Revenue AND values" sounds rigorous, but one might be 
well-justified while the other is hand-waving.

Splitting forces each contingency to stand on its own merits.

### Evidence
- Transcript shows splitting revealed problems with both contingencies
- Separate debates were more rigorous than combined would have been
- Similar pattern in 2 other scenarios

## Application Rule

### When This Applies
- Amendment with "AND" connecting multiple conditions
- Amendment with "IF...AND..." structure
- Multiple criteria that need independent justification

### How to Apply
1. Identify amendment with multiple contingencies
2. Raise point of order: "This contains multiple separate questions"
3. Motion to split: "Move to debate revenue threshold separately from 
   values compatibility"
4. Debate and vote on each contingency independently
5. Combine results if both pass

### What to Watch For
- Words: "AND," "IF...AND...," "both...and..."
- Amendments that feel like they're sneaking multiple things in
- Tammy (systems thinking often produces multi-contingency proposals)

## Limitations

### When This DOESN'T Apply
- Contingencies are genuinely inseparable (A requires B, B requires A)
- Time pressure requires accepting combined vote
- Contingencies are trivial and don't warrant separate debate

### Cautions
- Don't split every compound statement—use judgment
- Some contingencies are truly linked
- Procedural discipline is tool, not religion

## Related Lessons
- [Robert's Rules Enforcement Patterns](../by-category/procedural-discipline.md#enforcement)
- [When to Call Point of Order](../by-category/procedural-discipline.md#points)
```

## Quick Reference: Common Lesson Types

### Reasoning Patterns
- Skipped logical steps
- Circular reasoning
- Unfalsifiable claims
- Correlation/causation confusion
- Historical analogies lacking detail

### Evidence Patterns
- Claims without support
- Appropriate evidence standards for stakes
- Quantification that helped vs. hurt
- When to demand data vs. accept reasoning

### Procedural Patterns
- Effective use of Robert's Rules
- When to call points of order
- How to structure amendments
- When to call the question

### Character Patterns
- Productive character interactions
- When each character is most valuable
- How to prevent character failure modes
- Balance between perspectives

### Trade-off Patterns
- Effective quantification
- Making sacrifices explicit
- Choosing between values
- Acknowledging downsides

### Domain Patterns
- Hiring decision specifics
- Product strategy specifics
- Resource allocation specifics
- Partnership evaluation specifics

## Maintenance Guidelines

### Mark Stability Level

**Tentative** (seen once):
- Might be useful pattern or might be coincidence
- Extract but mark tentative
- Test in next similar scenario

**Validated** (seen 3+ times):
- Pattern confirmed across contexts
- Safe to rely on
- Promote to standard practice

**Deprecated** (no longer relevant):
- Context changed
- Better pattern superseded this
- Mark deprecated, don't delete (historical record)

### Update Based on Use

After injecting a lesson into a new deliberation:

**If it helped**:
- Note that in revision history
- Add example of successful application
- Consider promoting tentative → validated

**If it didn't help**:
- Note why it failed
- Add limitations section
- Consider deprecating if repeatedly unhelpful

**If it needed modification**:
- Update application rule
- Note what changed and why
- Keep old version in revision history

### Periodic Review

Every quarter, review lesson library:

**Cull**:
- Lessons that haven't been used in 6+ months
- Deprecated lessons (archive, don't delete)
- Redundant lessons (consolidate)

**Promote**:
- Tentative → Validated (after 3+ confirmations)
- Validated → Core (after 10+ uses)

**Refine**:
- Improve unclear application rules
- Add examples from recent use
- Update limitations based on edge cases found

## Integration with Deliberation Workflow

```
Deliberation Cycle:
├── 1. Frame problem
├── 2. Search lesson library for relevant patterns
├── 3. Inject applicable lessons into preamble
├── 4. Run committee deliberation
├── 5. Independent evaluation
├── 6. [YOU ARE HERE] Extract new lessons
├── 7. Update lesson library
└── 8. Use lessons in next deliberation

The cycle compounds: each deliberation improves the library,
which improves subsequent deliberations.
```

## Common Extraction Mistakes

### Mistake 1: Extracting too quickly

**Problem**: Lesson based on single instance might not generalize

**Fix**: Mark as "Tentative" until confirmed 2-3 times

### Mistake 2: Too abstract

**Problem**: "Be more rigorous" doesn't tell you what to do

**Fix**: Specific application rules: "When X, do Y"

### Mistake 3: Not testing

**Problem**: Lesson extracted but never used, so you don't know if it works

**Fix**: In next similar scenario, deliberately inject and test

### Mistake 4: Library becomes junk drawer

**Problem**: 50+ lessons, no organization, can't find relevant ones

**Fix**: Regular curation, deprecation, consolidation

### Mistake 5: No revision history

**Problem**: Lesson changes but you can't remember original or why it changed

**Fix**: Always document revisions with date and reason

---

**Related artifacts**:
- [Cross-Scenario Learning](./cross-scenario-learning.md) - Full methodology
- [Quick Start Guide](./quick-start-guide.md) - Extract your first lesson
- [Committee Setup Template](./committee-setup-template.md) - How to inject lessons

**Remember**: Lessons are living documents. Extract them, test them, refine them, deprecate them. The library should evolve as you learn what actually works.
