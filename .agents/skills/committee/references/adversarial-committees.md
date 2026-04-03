# Adversarial Committees: Fixed Character Rosters for Structured Deliberation

## The Core Problem

When you ask an LLM a single question, you get a single narrative that:
- Gravitates toward the statistical center of "what sounds reasonable"
- Inherits biases and blind spots from its training corpus
- Optimizes for local plausibility over global coherence
- Hides assumptions behind confident-sounding prose
- Collapses the decision space to whatever path has the strongest genre conventions

This is fine for simple queries. It's catastrophic for complex sociotechnical problems where **the question isn't "what's right?" but "what are we missing?"**

## The Solution: Structured Adversarial Deliberation

Instead of asking one question and getting one answer, you:

1. **Establish a fixed roster of characters** with incompatible propensities
2. **Present the problem** to all characters simultaneously
3. **Require each to respond** from their epistemic stance
4. **Force them to debate** using structured protocols (like Robert's Rules)
5. **Evaluate independently** by passing output to fresh model instances

The output isn't consensus. The output is **a map of the decision space** showing:
- What trade-offs are actually at stake
- Where hidden assumptions live
- Which risks each framing reveals or obscures
- What evidence would distinguish between interpretations

## Why Fixed Characters Matter

**Temptation**: Generate characters dynamically for each problem.

**Reality**: That lets the model short-circuit by generating characters who agree with the "obvious" answer.

**Solution**: Use a **fixed roster** with pre-defined propensities that you've calibrated through iteration.

Fixed characters:
- Can't be gamed by the model generating convenient disagreements
- Build institutional memory across deliberations
- Create consistent reference points (you learn what "Maya would say this" means)
- Prevent the model from taking shortcuts

## Character Selection Principles

You want propensities that:

1. **Cover common failure modes**
   - Political naiveté → need someone who assumes bad faith
   - Mission drift → need someone who guards core values
   - Ahistorical optimism → need someone who remembers past failures
   - Unfalsifiable claims → need someone who demands evidence
   - Linear thinking → need someone who traces feedback loops

2. **Naturally produce tension**
   - Idealism vs pragmatism
   - Risk-seeking vs risk-aversion
   - Trust vs suspicion
   - First-order vs second-order thinking
   - Speed vs thoroughness

3. **Can't all be satisfied simultaneously**
   - Addressing one character's concerns often aggravates another's
   - This forces explicit trade-off reasoning
   - Prevents premature convergence to "everyone's happy" solutions

4. **Force explicit reasoning**
   - At least one character must demand evidence
   - At least one must question assumptions
   - At least one must play devil's advocate

## The Standard Roster

The operational roster lives in `roster.md` (at the skill root). That file contains the full character definitions: propensities, key questions, what each catches, failure modes, calibration examples, interaction dynamics, and voice notes. For extended commentary — personality theory, interaction analysis, scaling considerations — see `character-propensity-reference.md` (in this references directory).

Through iterative calibration, the standard roster has reached stable behavioral equilibrium with five characters spanning complementary epistemic stances:

| Character | Propensity | Catches | Failure Mode |
|-----------|-----------|---------|--------------|
| Maya | Paranoid Realism | Political naivete, misaligned incentives, organizational dynamics | Unfalsifiable paranoia |
| Frankie | Idealism / Values Guardian | Mission drift, ethical shortcuts, normalization of deviation | Inflexible purism |
| Joe | Continuity Guardian | Ahistorical optimism, forgotten context, underestimated difficulty | Excessive conservatism |
| Vic | Evidence Prosecutor | Unfalsifiable claims, hand-waving, circular reasoning | Demanding impossible certainty |
| Tammy | Systems Thinker | Linear thinking, unintended consequences, missing feedback loops | Overcomplicating simple problems |

Each character has documented calibration examples (good/bad) in the roster file. These failure modes are as important as the propensities — a well-calibrated character avoids its failure mode while staying true to its epistemic stance.

---

## How to Use the Committee

### 1. Problem Presentation
State the problem clearly and completely. Include:
- Current situation
- Decision to be made
- Constraints and context
- What success looks like (if known)

### 2. Individual Responses
Each character responds to the problem from their propensity:

```
Maya: [paranoid realism take]
Frankie: [values-first take]
Joe: [institutional memory take]
Vic: [evidence-based critique]
Tammy: [systems-thinking take]
```

### 3. Structured Debate
Use Robert's Rules or similar forcing function to require:
- Direct responses to each other's points
- Evidence for claims
- Explicit reasoning chains
- No hand-waving or appeals to authority

See [Robert's Rules as Forcing Functions](./roberts-rules-forcing-function.md) for details.

### 4. Independent Evaluation
Pass the debate transcript to a **separate model instance** with no context about the deliberation. Evaluate against explicit rubrics:
- Were all perspectives genuinely explored?
- Were trade-offs made explicit?
- Were assumptions surfaced?
- Were reasoning chains complete?
- Were predictions testable?

See [Independent Evaluation Protocols](./independent-evaluation.md) for details.

## What Success Looks Like

**Not**: Everyone agrees on the answer

**Yes**: You understand the decision space well enough to choose based on your actual values and risk tolerance

After a good committee session, you should be able to articulate:
- What each character was worried about
- Why those worries are in tension
- What evidence would favor each interpretation
- What you're choosing to optimize for and what you're accepting as downside
- What early warning signs would indicate you chose wrong

### Evidence: deliberation vs. independent aggregation

Early testing compared the deliberative pipeline against an independent-vote pipeline (each character responds in isolation, then majority rules). On a Code of Conduct question, independent voting produced Aye 3–2; deliberation produced Nay 5–0. Three characters changed their votes after being forced to confront an enforcement objection they had ignored in isolation. The deliberative pipeline produced a richer output (decision-space map, surfaced assumptions, revisit conditions) and a different verdict. This is initial evidence that the structured adversarial process adds value beyond simply having multiple perspectives — the interaction structure matters, not just the number of voices.

## Common Mistakes

### Mistake 1: Generating characters dynamically
The model will create convenient disagreements rather than genuine adversarial tension.

**Fix**: Use the fixed roster.

### Mistake 2: Letting debate be too polite
Characters being deferential ("Maya raises good points, but...") is a sign the model is short-circuiting.

**Fix**: Require hostile cross-examination. Make them fight.

### Mistake 3: Accepting "we all agree now"
Real trade-offs don't have solutions where everyone wins.

**Fix**: If consensus emerges too easily, dig harder. What's being swept under the rug?

### Mistake 4: No forcing function
Without structure, the debate becomes theater rather than deliberation.

**Fix**: Use Robert's Rules or equivalent to force rigorous exploration of decision space.

### Mistake 5: No independent evaluation
The same model instance that generated the debate will be biased toward finding it convincing.

**Fix**: Pass output to fresh instances for RUBRIC-based scoring.

## Calibration Notes

The standard roster emerged through iterative refinement:

**Early versions had**:
- Too many characters (cognitive load, diminishing returns after 5)
- Dynamic character generation (model gamed it)
- Personality traits instead of epistemic stances (produced drama without insight)
- Overlapping propensities (redundant perspectives)

**Current roster has reached behavioral equilibrium**:
- Each character covers distinct failure mode
- Propensities naturally conflict
- No character can be removed without losing critical coverage
- Characters have shown consistent behavior across diverse problem domains

**You can extend or modify the roster**, but:
- Test extensively before relying on new characters
- Ensure new propensities fill actual gaps
- Don't add characters just for diversity of opinion
- Maintain the adversarial structure

## Example: Resource Allocation Decision

**Problem**: Should we hire two junior engineers or one senior engineer?

**Maya**: "Who's pushing for juniors? If it's the tech lead, check if they're empire-building. Seniors are harder to manipulate, juniors create dependency. What's the political angle?"

**Frankie**: "Our mission is developing talent. Hiring only seniors because it's easier is abandoning our values. We said we'd invest in people, not just extract value."

**Joe**: "We hired two juniors in 2022. They both left after eight months because we didn't have bandwidth to mentor them. Senior engineers can self-direct. Don't repeat that mistake."

**Vic**: "Show me the data. What's the actual productivity difference? What does onboarding time look like? Give me numbers, not vibes."

**Tammy**: "This creates a feedback loop. If we only hire seniors, we never build mentoring capacity, which means we can't hire juniors, which reinforces the problem. We're optimizing for local efficiency at the cost of long-term capability."

**[After structured debate and independent evaluation]**

**Decision becomes clear**: 
Not "juniors vs senior" but "do we currently have mentoring capacity?" If no, hiring juniors is setting them up to fail (Joe's point validated). If building mentoring capacity is strategic priority (Frankie's values + Tammy's feedback loop), then the real question is "what needs to change to make juniors viable?"

The committee didn't give you the answer. It showed you **what question you're actually deciding**.

## Integration with Other Techniques

Adversarial committees work best when combined with:

- **Robert's Rules forcing functions**: Prevents the debate from becoming theater
- **Independent evaluation**: Ensures you're not fooling yourself about rigor
- **Cross-scenario learning**: Inject relevant insights from past committee deliberations
- **State maintenance**: Keep "agent" directories with committee history outside chat systems

See the other reference documents in this directory for detailed protocols on each technique.

## Where This Fits: The Pipeline View

In formal terms, a committee deliberation is a **transformation morphism** — it consumes a charter (problem statement + constraints) and produces a transcript (the deliberation record):

```
charter × character-propensities → transcript  [Deliberate]  {catalytic: character-propensities}
```

Character propensities are a **catalytic input** — they participate in every deliberation without being consumed or modified. This is why fixed rosters work: the propensities are reusable infrastructure, not per-problem artifacts.

The transcript then flows through **enrichment** (rubric scoring by the independent evaluator), a **quality gate** (threshold check), and optionally a **bounded feedback trace** (remediation loop, max 2 rounds).

The confidence propagation rule matters here: a committee that produces a Medium-confidence transcript cannot be rescued by excellent evaluation. The quality ceiling is set at generation time. This is why character calibration and Robert's Rules matter — they raise the quality of the *transformation*, not just the scoring of its output.

## Theoretical Foundation

This technique operationalizes insights from:

- **Second-Order Cybernetics**: The observer affects the observed. By forcing multiple observer positions, you triangulate on more robust understanding.
- **Sense-Making Methodology**: Different gaps require different bridges. The committee ensures you generate multiple bridge attempts rather than collapsing to the first plausible one.
- **Deleuzian difference**: Repetition (multiple characters addressing the same problem) produces difference (genuinely distinct perspectives) rather than redundancy.

## Conclusion

Adversarial committees aren't about getting the "right answer" from AI.

They're about **preventing premature collapse to statistically likely but potentially wrong answers**.

They force you to explore the decision space thoroughly enough that when you finally decide, you do so with eyes open to the trade-offs—not because the AI told you what to do, but because you understand what you're choosing and why.

The characters aren't real people. But the cognitive diversity they represent is real. And it's often exactly what's missing when you're alone with a problem, your own biases, and an AI that's eager to confirm whatever story sounds most plausible.

---

**Related references**:
- [Robert's Rules as Forcing Functions](./roberts-rules-forcing-function.md)
- [Character Propensity Reference](./character-propensity-reference.md)
- [Deliberated Choice Workflow](./deliberated-choice-workflow.md)
