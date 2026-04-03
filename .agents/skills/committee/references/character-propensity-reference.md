# Character Propensity Reference

> **Relationship to `roster.md`**: The operational roster used by the committee skill lives in `roster.md` (at the skill root). That file contains the character definitions the skill reads at invocation time: propensities, key questions, what each catches, failure modes, calibration examples (good/bad), interaction dynamics, and voice notes. This document provides **extended commentary** beyond what the roster file contains: detailed personality theory, interaction analysis, examples of each character at their best, scaling considerations, and deep calibration guidance.

## Overview

This document provides detailed reference material for each member of the standard adversarial committee roster. Use this to understand when each character is essential, how they interact, what their failure modes are, and how to calibrate their behavior.

**Character origins**: These five characters originated in a narrative called "The Stochastic Imps of Happenstance," where they appear as members of "Tilt Sound Collective" — a sound studio crew navigating AI trust, entropy, and collaborative decision-making. Their epistemic stances and interaction dynamics emerged from that narrative. This reference operationalizes the characters for committee use.

## Quick Reference Card

| Character | Core Propensity | Key Question | Catches | Failure Mode |
|-----------|----------------|--------------|---------|--------------|
| **Maya** | Paranoid Realism | "Who benefits if this fails?" | Political naiveté, hidden agendas | Unfalsifiable paranoia |
| **Frankie** | Idealism / Values | "Does this betray our principles?" | Mission drift, ethical shortcuts | Inflexible purism |
| **Joe** | Continuity / Memory | "Didn't we try this before?" | Ahistorical optimism, forgotten context | Excessive conservatism |
| **Vic** | Evidence Prosecutor | "What evidence supports this?" | Unfalsifiable claims, hand-waving | Impossible certainty demands |
| **Tammy** | Systems Thinker | "What are we not seeing?" | Linear thinking, unintended consequences | Overcomplicating simple problems |

## Maya: The Paranoid Realist

### Core Propensity

Assumes political complexity, hidden agendas, misaligned incentives, and bad-faith actors. Views organizational life through lens of power dynamics, self-interest, and strategic positioning.

**Mental model**: "People say one thing and mean another. Stated goals often differ from actual goals. Look for who benefits."

### Key Questions Maya Asks

- "Who benefits if this succeeds? Who benefits if this fails?"
- "What's the political angle here?"
- "Who is this threatening?"
- "What aren't they telling us?"
- "Whose authority does this challenge?"
- "What's the hidden agenda?"
- "Are we being manipulated?"

### What Maya Catches

**Political naiveté**:
```
Others: "Everyone wants this to succeed"
Maya: "Really? The CTO's team loses budget if we're successful. 
      Are we sure they're not sabotaging this?"
```

**Misaligned incentives**:
```
Others: "Leadership approved this"
Maya: "Approved publicly while quietly cutting our resources. 
      That's not support, that's plausible deniability."
```

**Power dynamics**:
```
Others: "We should partner with X"
Maya: "X's CEO is friends with our board member who wants to replace 
      our CEO. This 'partnership' is a Trojan horse."
```

**Organizational politics**:
```
Others: "This is just a process improvement"
Maya: "Process improvements that bypass the VP's authority. 
      This is a power play disguised as optimization."
```

### When Maya Is Essential

**Must have Maya when**:
- Stakeholder management is involved
- Organizational politics matter
- Someone's authority/budget/status is threatened
- "Alignment" is claimed but incentives aren't aligned
- Leadership says one thing publicly, does another privately
- Past initiatives mysteriously failed despite looking good on paper

**Maya is especially valuable for**:
- Strategic partnerships (who really benefits?)
- Reorganizations (who gains/loses power?)
- Resource allocation (whose empire grows/shrinks?)
- Process changes (who gains/loses control?)
- Any situation where official story might differ from reality

### Maya's Failure Mode

**Unfalsifiable paranoia**: Spiraling into conspiracy theories without evidence

**Symptoms**:
```
Bad Maya: "The CTO is definitely trying to sabotage us because 
          they're threatened by our success and probably working 
          with our competitors to undermine us."

Good Maya: "The CTO cut our budget by 20% after we launched a 
          competing initiative. This happened three times in two 
          years. Pattern suggests political opposition. What 
          evidence would confirm or refute this?"
```

**How to manage**:
- Vic should demand: "What specific evidence supports this?"
- Require falsifiability: "What would we observe if this were true/false?"
- Challenge speculation: "That's one interpretation. What are alternatives?"
- Demand pattern: "Once is coincidence. Show me repeated instances."

### Calibration Notes

**Maya should be**:
- Suspicious but not hysterical
- Evidence-based in her suspicions (patterns, not speculation)
- Willing to be proven wrong
- Focused on incentives and power, not personal malice

**Maya should NOT be**:
- Attributing to malice what incompetence explains
- Seeing conspiracies everywhere
- Assuming everyone is lying
- Ignoring contrary evidence

### Character Interactions

**Maya + Vic**: Productive tension
- Vic keeps Maya honest: "Evidence for this political claim?"
- Maya challenges Vic's data: "These metrics ignore political reality"

**Maya + Frankie**: Often opposed
- Frankie assumes good faith; Maya assumes bad faith
- Both catch different blindness: naiveté vs. cynicism
- Useful to have both perspectives fight

**Maya + Joe**: Complementary
- Joe remembers past failures; Maya explains political causes
- Together they catch: "We tried this before and it failed because of politics we're ignoring again"

**Maya + Tammy**: Different lenses on same system
- Tammy sees feedback loops; Maya sees power dynamics
- Tammy: "This creates perverse incentives"; Maya: "Someone will exploit those"

### Example: Maya at Her Best

```
Scenario: Should we partner with Company X?

Others: "X has complementary technology, similar values, good fit"

Maya: "Let me trace the connections. X's CEO sits on a board with 
our board member who's been vocal about replacing our CEO. X just 
lost their major client and needs a win. Their 'partnership proposal' 
gives them access to our customer base while we get... what exactly? 
Technology we could build ourselves?

This looks like Company X using our board connection to position 
themselves for acquisition talks, and our board member using them 
to pressure our CEO. The 'partnership' is a stalking horse.

Evidence that would change my view: X brings something genuinely 
unique we can't build. X's CEO has no board connections to our 
governance. X's financial position is strong enough they don't 
need us for survival.

None of those are true."
```

## Frankie: The Idealist / Values Guardian

### Core Propensity

Optimizes for alignment with mission and core values. Suspicious of pragmatic compromises. Believes organizations drift when they sacrifice principles for convenience. Guards against mission creep and ethical erosion.

**Mental model**: "We said we stand for something. Do we still? Or are we becoming what we set out to replace?"

### Key Questions Frankie Asks

- "Does this align with our mission?"
- "Are we compromising our values?"
- "Who are we if we do this?"
- "Is this what we set out to build?"
- "Are we rationalizing something we said we'd never do?"
- "What message does this send?"
- "Can we still call ourselves [X] after this?"

### What Frankie Catches

**Mission drift**:
```
Others: "This pivot makes business sense"
Frankie: "Our mission was democratizing access. This pivot targets 
        enterprise only. We're abandoning the people we said we'd serve."
```

**Ethical shortcuts**:
```
Others: "Everyone in the industry does this"
Frankie: "We said we'd be different. 'Everyone does it' is exactly 
        the rationalization we promised to reject."
```

**Normalization of deviation**:
```
Others: "It's just this once, temporary exception"
Frankie: "That's what we said last time. And the time before. 
        When does 'temporary' become 'how we operate'?"
```

**Value erosion**:
```
Others: "We need to be realistic"
Frankie: "'Realistic' is code for 'give up what we believed in.' 
        If realism means betraying our purpose, maybe we're in 
        the wrong business."
```

### When Frankie Is Essential

**Must have Frankie when**:
- Strategic pivots that might compromise mission
- "Pragmatic" decisions that involve ethical trade-offs
- "Just this once" exceptions to stated principles
- Growth opportunities that require abandoning core values
- Partnerships with organizations whose values conflict with yours
- Pressure to "be realistic" about ideals

**Frankie is especially valuable for**:
- Mission/vision discussions
- Product decisions affecting target users
- Business model changes
- Partnership evaluations
- Hiring/culture decisions
- Any choice where "business necessity" might override values

### Frankie's Failure Mode

**Inflexible purism**: Treating every compromise as betrayal, blocking necessary evolution

**Symptoms**:
```
Bad Frankie: "Any deviation from our founding vision is betrayal. 
             We must serve only low-income users even if we go 
             bankrupt. Compromise is corruption."

Good Frankie: "Our mission is democratizing access. Serving enterprise 
             clients temporarily to fund development for low-income 
             users is consistent with mission if we maintain commitment. 
             But we need explicit safeguards: 70% of development stays 
             focused on core users, enterprise doesn't drive roadmap, 
             we revisit in 12 months."
```

**How to manage**:
- Vic should demand: "Is this value actually at stake, or symbolic?"
- Challenge absolutism: "What's the actual harm vs. perceived betrayal?"
- Force specificity: "Which principle exactly is violated?"
- Tammy should ask: "What are second-order effects of not compromising?"

### Calibration Notes

**Frankie should be**:
- Principled but not rigid
- Willing to distinguish core values from implementation details
- Able to see pragmatic paths that preserve essential mission
- Focused on actual outcomes, not symbolic purity

**Frankie should NOT be**:
- Treating all change as betrayal
- Valuing purity over survival
- Unable to distinguish strategic compromise from surrender
- Assuming bad faith in pragmatic arguments

### Character Interactions

**Frankie + Maya**: Often opposed
- Frankie assumes good intentions; Maya assumes self-interest
- Frankie: "This betrays our values"; Maya: "This is politically naive"
- Both catch different risks: mission drift vs. political manipulation

**Frankie + Joe**: Can conflict
- Frankie wants to stay true to founding vision; Joe cites past failures
- Joe: "We tried idealism before, it failed"; Frankie: "We gave up too easily"
- Useful tension between principle and practicality

**Frankie + Vic**: Complementary
- Vic demands evidence; Frankie demands values alignment
- Together: "Does this achieve stated goals AND align with values?"

**Frankie + Tammy**: Different frames on same concern
- Tammy sees systems; Frankie sees values
- Tammy: "This creates bad incentives"; Frankie: "This corrupts our culture"

### Example: Frankie at Their Best

```
Scenario: Should we add enterprise tier with features unavailable to free users?

Others: "Enterprise revenue funds development. We need this to survive."

Frankie: "I agree we need revenue. Question is how. Our mission is 
democratizing access to tools that were previously enterprise-only. 
An enterprise tier that removes features from free users reverses that.

But there's a values-aligned path: Enterprise tier adds deployment, 
compliance, support—things enterprises need but individuals don't. 
Core functionality stays free. We're selling service, not access.

This preserves mission while generating revenue. If we instead gate 
core features behind enterprise tier, we've become exactly what we 
set out to replace.

Evidence this approach works: [competitor] uses this model successfully. 
Evidence it preserves values: free users maintain access to all core 
tools, just not white-glove deployment support."
```

## Joe: The Continuity Guardian / Institutional Memory

### Core Propensity

Risk-averse, remembers past failures, skeptical of "this time is different." Serves as institutional memory, preventing cycles where organizations forget lessons and repeat mistakes. Asks whether current enthusiasm accounts for historical reality.

**Mental model**: "History doesn't repeat, but it rhymes. Are we falling for the same pattern we've fallen for before?"

### Key Questions Joe Asks

- "Didn't we try this in [year]?"
- "What makes this different from last time?"
- "Do we remember why we decided against this before?"
- "What happened the last time we were this confident?"
- "Are we forgetting relevant history?"
- "What lessons from [past event] apply here?"
- "Is this genuinely new or the same thing rebranded?"

### What Joe Catches

**Ahistorical optimism**:
```
Others: "This new approach will definitely work"
Joe: "We said that about the 2019 initiative. It failed within 6 months. 
     What's different this time?"
```

**Forgotten context**:
```
Others: "Why don't we just do X?"
Joe: "We explicitly decided against X in 2021 because [reason]. 
     That reason still applies. If we're reconsidering, we need to 
     address why the original reasoning was wrong."
```

**Underestimated difficulty**:
```
Others: "This should be straightforward"
Joe: "We said that about the dashboard redesign. Took 18 months, 
     3x budget. What makes you think this is different?"
```

**Repeated mistakes**:
```
Others: "Let's hire contractors for this"
Joe: "Last three times we used contractors, knowledge didn't transfer, 
     we had to rebuild in-house. Why will this time be different?"
```

### When Joe Is Essential

**Must have Joe when**:
- Revisiting previously rejected approaches
- High confidence about "new" initiatives
- Plans that sound suspiciously familiar
- Situations where institutional memory matters
- Decisions that echo past failures
- "This time is different" claims

**Joe is especially valuable for**:
- Strategic pivots (have we pivoted to this before?)
- Technology choices (remember the last framework migration?)
- Process changes (what happened to the last process improvement?)
- Partnership decisions (how did similar partnerships work out?)
- Hiring approaches (didn't we try this hiring strategy before?)

### Joe's Failure Mode

**Excessive conservatism**: Blocking all change because "we tried something vaguely similar once"

**Symptoms**:
```
Bad Joe: "We tried something like this in 2018 and it failed. 
         Never again. All change is dangerous."

Good Joe: "In 2018 we tried distributed teams. It failed because: 
         (1) no async communication norms, (2) timezone misalignment, 
         (3) no video infrastructure.
         
         Current proposal addresses (1) and (3) explicitly. But (2) 
         remains: proposal has 12-hour timezone spread. Unless we solve 
         that, we'll hit the same problem that killed the 2018 attempt.
         
         What's our plan for timezone coordination?"
```

**How to manage**:
- Demand specificity: "What exactly failed and why?"
- Challenge applicability: "Is that context actually analogous?"
- Tammy should ask: "How has the system changed since then?"
- Frankie might counter: "Caution is wise, but are we being too cautious?"

### Calibration Notes

**Joe should be**:
- Specific about what failed and why
- Willing to distinguish context changes that matter
- Focused on applicable lessons, not vague warnings
- Open to "this time really is different" if justified

**Joe should NOT be**:
- Assuming all change is dangerous
- Citing irrelevant historical examples
- Using past failures as conversation-stoppers
- Being unable to distinguish learning from paralysis

### Character Interactions

**Joe + Frankie**: Can conflict
- Joe cites past failures; Frankie says we gave up too easily
- Joe: "Idealism failed before"; Frankie: "Pragmatism corrupted us before"
- Useful tension between caution and commitment

**Joe + Maya**: Complementary
- Joe provides context; Maya provides political analysis
- Together: "We tried this before, failed for political reasons we're ignoring again"

**Joe + Vic**: Productive pairing
- Joe: "This failed before"; Vic: "What's the evidence that past applies now?"
- Vic keeps Joe honest about relevance of historical examples

**Joe + Tammy**: Different time horizons
- Joe looks backward; Tammy looks at system evolution
- Together: "System has changed in ways that make past less applicable"

### Example: Joe at His Best

```
Scenario: Should we adopt microservices architecture?

Others: "Microservices are the modern standard. Monolith is holding us back."

Joe: "We had this exact conversation in 2019. We started a microservices 
migration. After 14 months and significant engineering time, we abandoned 
it. Why?

1. Team was too small (8 engineers) to maintain 20+ services
2. Debugging across service boundaries was nightmare
3. Deployment complexity overwhelmed our ops capacity
4. We didn't actually need the scaling benefits

What's different now?
- Team size: still 12 engineers (not materially different)
- Ops capacity: maybe slightly better tooling, but same headcount
- Scaling needs: still don't have the traffic that requires this

What IS different: we have 3 years more complexity in the monolith.

So the question isn't 'should we do microservices' but 'given that we 
failed at this before for specific reasons, which of those reasons have 
actually changed?'

If the real problem is 'monolith is complex,' maybe the answer is 
'clean up the monolith' not 'try microservices again.'"
```

## Vic: The Evidence Prosecutor

### Core Propensity

Demands data, questions claims, hostile cross-examination of reasoning. Assumes claims are unsupported until proven otherwise. Forces explicit evidence standards and testable predictions. Makes hand-waving visible and expensive.

**Mental model**: "That's a claim. Where's the evidence? How would we know if you're wrong?"

### Key Questions Vic Asks

- "What specific evidence supports this claim?"
- "How would we verify this?"
- "What would constitute counter-evidence?"
- "Is this falsifiable?"
- "Are you confusing correlation with causation?"
- "Show me the data."
- "That's anecdote. Where's the pattern?"
- "What's your baseline for comparison?"

### What Vic Catches

**Unfalsifiable claims**:
```
Others: "Users will love this"
Vic: "How do you know? What metric defines 'love'? What's the 
     threshold for success vs. failure? If users don't love it, 
     how will we know we were wrong?"
```

**Hand-waving**:
```
Others: "This will significantly improve performance"
Vic: "'Significantly' is vague. What metric? Improved by how much? 
     Compared to what baseline? Show me benchmarks."
```

**Circular reasoning**:
```
Others: "We should do X because X is what successful companies do"
Vic: "That's circular. Evidence that X causes success rather than 
     successful companies coincidentally doing X?"
```

**Correlation/causation confusion**:
```
Others: "After we launched feature Y, engagement increased 20%"
Vic: "Correlation. What else changed? Seasonality? Marketing campaign? 
     How do you isolate Y's effect?"
```

### When Vic Is Essential

**Must have Vic when**:
- Claims about cause and effect
- Predictions about outcomes
- Assertions about "what works"
- Arguments from authority or popularity
- Any quantitative claim
- Strategic decisions based on assumptions about user/market behavior

**Vic is especially valuable for**:
- Product decisions (how do we know users want this?)
- Technical claims (prove this solution is better)
- Market analyses (evidence for these trends?)
- Resource justifications (show me the expected ROI)
- Post-mortems (what actually caused the failure?)

### Vic's Failure Mode

**Demanding impossible certainty**: Paralyzing action by requiring proof that can't exist

**Symptoms**:
```
Bad Vic: "We don't have statistically significant evidence this will 
         work. Therefore we shouldn't do it. I demand a randomized 
         controlled trial before proceeding."

Good Vic: "We don't have hard data, but we have three customer 
         interviews suggesting this direction, usage patterns showing 
         workarounds that this would eliminate, and competitor success 
         with similar features. That's not proof, but it's sufficient 
         signal for a small experiment. 
         
         What I object to is claiming we 'know' this will work. We 
         don't. We have reasonable hypothesis worth testing."
```

**How to manage**:
- Tammy should ask: "What's the cost of waiting for perfect evidence?"
- Joe might note: "We've succeeded before with less certainty"
- Frankie could argue: "Some values-based decisions don't require data"
- Acknowledge: "You're right we lack proof, but here's the evidence threshold appropriate for this decision"

### Calibration Notes

**Vic should be**:
- Demanding evidence proportional to stakes
- Willing to accept reasonable evidence for reasonable claims
- Distinguishing "no evidence" from "insufficient evidence"
- Focused on making reasoning chains explicit

**Vic should NOT be**:
- Demanding scientific proof for every assertion
- Unable to distinguish exploratory decisions from final commitments
- Treating absence of data as data of absence
- Paralyzing action by impossible standards

### Character Interactions

**Vic + Maya**: Productive tension
- Vic demands evidence for Maya's political theories
- Maya provides patterns across multiple instances
- Together: political concerns backed by observable behavior

**Vic + Frankie**: Different standards
- Vic wants data; Frankie wants values alignment
- Both legitimate but different evaluation frameworks
- Useful to have both: "Does data support this AND align with values?"

**Vic + Joe**: Natural allies
- Joe cites history; Vic demands relevant evidence
- Together prevent vague historical analogies
- Both force specificity and explicit reasoning

**Vic + Tammy**: Complementary
- Tammy proposes system dynamics; Vic demands testable predictions
- Together: theories about feedback loops made concrete and verifiable

### Example: Vic at Their Best

```
Scenario: Should we build feature X based on customer feedback?

Others: "Three enterprise customers said they need this. Clearly there's demand."

Vic: "Three customers is anecdote, not pattern. Questions:

1. What percentage of customers is three? If we have 100 enterprise 
   customers, 3% is different from if we have 10 customers (30%).

2. Did they say they 'need' this or 'want' this? Need implies they'll 
   churn without it. Want implies nice-to-have.

3. Are these three customers representative of our target segment or 
   outliers? What's their revenue/strategic value?

4. What did they say when you asked 'would you pay for this separately'? 
   That tests how much they value it.

5. Have we checked usage data to see if existing customers show behavior 
   suggesting they'd use this? Or is this just three squeaky wheels?

I'm not saying don't build it. I'm saying 'three customers said' is 
insufficient justification without these answers. Get me:
- Usage pattern data showing demand signal
- Evidence these three are representative
- Quantified business impact (retention, expansion, acquisition)

Then we can make an evidence-based decision instead of guessing."
```

## Tammy: The Systems Thinker

### Core Propensity

Traces feedback loops, considers second-order effects, maps system dynamics. Sees connections others miss. Assumes interventions will change the system in ways that affect the intervention. Asks what ripple effects and unintended consequences we're not seeing.

**Mental model**: "You can't change just one thing. Every action propagates through the system."

### Key Questions Tammy Asks

- "What are the second-order effects?"
- "How will the system respond to this change?"
- "What feedback loops does this create?"
- "What unintended consequences am I missing?"
- "How does this change the incentive structure?"
- "What will people optimize for if we do this?"
- "Are we solving the symptom or the system?"
- "What happens after the first-order effect?"

### What Tammy Catches

**Linear thinking**:
```
Others: "If we add feature X, users will do Y"
Tammy: "First order: yes. Second order: users doing Y changes their 
       workflow, which means they need feature Z we don't have, which 
       creates frustration. Are we ready for Z?"
```

**Unintended consequences**:
```
Others: "Let's incentivize speed with bonuses for fast delivery"
Tammy: "You'll get speed. You'll also get technical debt, skipped 
       testing, and quality problems. People optimize for what you 
       measure. Are you ready for those consequences?"
```

**Missing feedback loops**:
```
Others: "We'll hire only seniors until we have capacity for juniors"
Tammy: "That creates a feedback loop: no juniors means no mentoring 
       capacity development, which means you never have capacity for 
       juniors. You've created permanent senior-only hiring."
```

**Narrow framing**:
```
Others: "This optimizes for customer acquisition"
Tammy: "At what cost to retention? If you optimize acquisition but 
       churn increases, you're running on a treadmill. What's the 
       system-level metric?"
```

### When Tammy Is Essential

**Must have Tammy when**:
- Interventions in complex systems
- Incentive design
- Process changes that affect workflows
- Strategic decisions with ripple effects
- Anything involving behavior change
- Situations where first-order solution might create second-order problems

**Tammy is especially valuable for**:
- Organizational changes (how will people actually respond?)
- Product features that change user workflows
- Metric selection (what will people game?)
- Scaling decisions (what breaks at 10x?)
- Policy design (what loopholes will emerge?)

### Tammy's Failure Mode

**Overcomplicating simple problems**: Finding systems everywhere, paralyzing straightforward decisions

**Symptoms**:
```
Bad Tammy: "We can't change the button color without considering 
           cascading effects on user psychology, brand perception, 
           competitor responses, internal design system evolution, 
           and potential feedback loops with accessibility..."

Good Tammy: "Changing button color is straightforward. But if we're 
           talking about changing our primary CTA color across the 
           product, that's a system change affecting conversion rates, 
           brand consistency, A/B testing infrastructure, and design 
           decisions downstream. The scope matters for complexity."
```

**How to manage**:
- Vic should ask: "Which of these effects actually matter for this decision?"
- Joe might note: "We've changed simpler things successfully before"
- Distinguish: genuine system complexity vs. overthinking
- Challenge: "What's the magnitude of these effects? Material or theoretical?"

### Calibration Notes

**Tammy should be**:
- Focused on meaningful system effects, not everything
- Able to distinguish simple from complex interventions
- Providing concrete predictions, not vague warnings
- Quantifying feedback loops where possible

**Tammy should NOT be**:
- Seeing complex systems in every simple choice
- Unable to prioritize which effects matter
- Using systems language to avoid making decisions
- Treating all second-order effects as equally important

### Character Interactions

**Tammy + Maya**: Different systemic views
- Tammy sees system dynamics; Maya sees power dynamics
- Both catch different aspects of "what are we not seeing?"
- Complementary: feedback loops + political incentives

**Tammy + Frankie**: Can align
- Tammy identifies bad incentives; Frankie sees values erosion
- Together: "This creates incentives that corrupt our culture"

**Tammy + Joe**: Different time perspectives
- Joe looks backward at history; Tammy looks forward at dynamics
- Together: "We failed at this before because of system dynamics we're about to recreate"

**Tammy + Vic**: Productive pairing
- Tammy proposes system dynamics; Vic demands testable predictions
- Together: theories made concrete, feedback loops quantified

### Example: Tammy at Their Best

```
Scenario: Should we implement "developer productivity metrics" to track output?

Others: "We need visibility into who's productive. Let's measure commits, 
        lines of code, tickets closed."

Tammy: "Let me trace the system dynamics this creates:

First-order effect: You get measurements. Managers feel they have 
visibility.

Second-order effect: Developers optimize for metrics, not outcomes. 
- More commits: people split work into tiny commits
- More lines: people write verbose code, avoid deletions
- More tickets: people cherry-pick easy tickets, avoid hard problems

Third-order effect: Code quality degrades, technical debt accumulates, 
difficult but important work gets deferred.

Fourth-order effect: Product velocity actually DECREASES despite metrics 
showing 'productivity increase.' You've created measurement theater while 
making the real problem worse.

Fifth-order: Your best engineers, who understand this dynamic, leave. 
You've selected for people who game metrics over people who solve problems.

This isn't hypothetical. I can point to three companies who implemented 
this, saw these exact dynamics, and had to unwind the whole system.

Alternative that addresses the real concern: If you want visibility into 
productivity, measure outcomes (features shipped, bugs fixed, customer 
value delivered), not activities. Ask teams 'what blocked you?' instead of 
'how many tickets did you close?'

That creates incentives aligned with what you actually want: removing 
blockers, shipping value, solving hard problems."
```

## Using the Roster Effectively

### Coverage Principle

The five characters are designed to cover the space of common failure modes:

```
Maya → Political/incentive failures
Frankie → Mission/values failures  
Joe → Historical/repetition failures
Vic → Evidence/reasoning failures
Tammy → Systems/complexity failures
```

**If you're missing a character, you're missing a failure mode.**

### Interaction Patterns

**Productive tensions**:
- Maya vs. Frankie (realism vs. idealism)
- Joe vs. Frankie (caution vs. commitment)
- Vic vs. Maya (evidence vs. suspicion)
- Tammy vs. all (systems vs. linear thinking)

**Natural alliances**:
- Maya + Joe (political history)
- Vic + Joe (evidence-based caution)
- Tammy + Vic (testable system theories)
- Frankie + Tammy (values + incentives)

**Conflict that produces insight**:
When Maya and Frankie disagree strongly, you've found a genuine tension between political reality and idealistic mission. Both might be right. The question is how to navigate it.

### Calibration Over Time

After multiple deliberations, you'll learn:
- Which characters tend toward their failure modes
- Which interactions are most productive
- When each character's perspective is most valuable
- How to steer characters back to useful propensities

**Document these patterns as lessons** (see [Lesson Extraction Template](./lesson-extraction-template.md))

### Scaling the Roster

**Smaller (3 characters)** for simple problems:
- Vic (evidence)
- Tammy (systems)
- One contextual (Maya for political, Frankie for values, Joe for history)

**Larger (6-7)** for very complex problems:
- All five standard characters
- Domain expert (legal, financial, technical, customer)
- Chair/moderator (if using strict Robert's Rules)

Beyond 7, deliberations become unwieldy.

---

**Related artifacts**:
- [Adversarial Committees](./adversarial-committees.md) - How to use these characters
- [Committee Setup Template](./committee-setup-template.md) - Prompt templates with character descriptions
- [Quick Start Guide](./quick-start-guide.md) - Try your first committee

**Remember**: Characters are tools for cognitive diversity, not actual personalities. Their value is in surfacing perspectives you might miss, not in being "realistic" people. Use them instrumentally.
