# From “Docs-as-Prompts” to “Models-as-Objects”: an ACT view of the SWE pipeline

**Thesis.** Treat each project document (problem statement, context pack, SysML view, API spec, tests) as a *representation* of a model, and treat each step of the software pipeline as a *transformation* between models. Applied Category Theory (ACT) gives us the right knobs to talk about composition, abstraction, traceability, and reuse—without getting lost in tool details.

## 1) Two worlds, connected by functors

* **Doc**: a category whose objects are project artifacts (problem statement, kick-off brief, ADRs, SysML files, diagrams, tests). Morphisms are edits/refactors/updates between artifacts (e.g., “add acceptance criteria,” “split interface into two services”).
* **Mod**: a category whose objects are *models of the system* (requirements model, behavior model, architectural allocation, data model, safety model, test model). Morphisms are *model transformations* (abstraction/refinement, allocation, consistency mapping, view change).

There’s a canonical interpretation (a functor):
**⟦–⟧ : Doc → Mod**, “parse/interpret this document into the model it denotes.”
Often we also have a rendering/documentation functor **R : Mod → Doc** (generate views/reports/templates from a model).

In the ideal, **R ⊣ ⟦–⟧** (an adjunction): parse then render or render then parse “mostly” round-trips. The *unit/counit* of the adjunction quantify drift (how far the round-trip is from identity). In practice, this is our **traceability gap**.

## 2) NASA’s “Elegant Systems Engineering” as a model zoo

ESE highlights that engineered systems live in *many* model types: stakeholder needs, functions, states/behaviors, structure (physical & logical), interfaces, risks, verification plans, etc. In ACT terms:

* These are distinct **objects in Mod**, with **morphisms** connecting them (e.g., allocation: from function to component; refinement: from abstract behavior to detailed state machine).
* Cross-model consistency is expressed by **commuting diagrams** (“if we refine here and then allocate, that matches allocating first and then refining”).
* Reuse often appears as a **universal construction** (a “best” way to integrate two models under constraints): e.g., a **pullback** to synchronize two views on a shared interface, or a **pushout** to merge independent extensions.

## 3) MBSE / SysML as concrete carriers

A SysML project is a concrete object in **Mod**; its diagrams (IBD, BDD, activity, state, sequence) are **views**. Each viewpoint behaves like a functor from the “whole model” to a “view category.” Consistency constraints between views show up as **limits** (agreeing on shared parts) or **spans** (traceability links across heterogeneous submodels). Bidirectional sync between a view and the underlying model is well-modeled by **lenses** (a disciplined pair of “get” + “putback” that strives to keep round-trips coherent).

## 4) The pipeline as composition

The docs-as-prompts pipeline becomes a **string diagram**—a composition of transformations:

```
Doc ──⟦–⟧──▶  Mod  ──normalize/elaborate──▶  Mod  ──F(codegen)──▶ Impl
                                   │                                   │
                                   └──P(property/test extraction)──▶ Evidence
```

* **⟦–⟧**: interpretation (from text/diagrams to a typed model).
* **normalize/elaborate**: make implicit structure explicit; apply patterns; allocate responsibilities.
* **F**: realization (code, configs, infra).
* **P**: derive checks and tests; run against Impl to get **Evidence**.
* The feedback loop uses a **lens** from Evidence/Impl back to Doc/Mod: update risk notes, acceptance criteria, and diagrams coherently.

Because these are morphisms, we can *compose* them and talk about **laws**: e.g., “interpret then elaborate” should equal “elaborate-aware interpretation” (a commutative square). When it doesn’t, the *square fails to commute*—that’s a crisp way to name a consistency defect.

## 5) Generative tools as functors (with uncertainty)

Docs-as-prompts leverage LLMs/compilers/translators as transformation engines. Category-theoretically, each tool is (approximately) a **functor** between categories (Doc→Doc, Doc→Mod, Mod→Doc, Mod→Impl). Because LLMs are stochastic, we treat them as **enriched** (outputs carry distributions/confidence/cost). **Critic loops** and **tests** are then *natural transformations* that compare alternative pipelines (e.g., two prompting strategies from Doc to Mod) and select the one that better preserves intent (commutes “tighter” with the reference semantics).

## 6) Why this lens helps day-to-day

* **Problem-before-solution** = choose the **objects** and the **morphisms** first. If you can’t draw the commuting diagram, you probably don’t understand the flow.
* **Traceability** = naturality: changes in one view propagate along functorial structure to other views automatically or with minimal human glue.
* **Reuse** = universal properties: factor common parts into components defined by their *interfaces* (pullbacks/pushouts); wire by composition rather than ad-hoc scripts.
* **Governance** = enrichment: attach cost, risk, and confidence to morphisms; compose them to see portfolio-level effects.
* **MBSE alignment**: SysML artifacts are not “pictures”; they’re carriers of morphisms. The value is in the **maps between views** just as much as in the views.

## 7) Grounding in our practice

* The **kickoff-assistant** builds a minimal Doc object that interprets cleanly into Mod (problem, scope, stakeholders, interfaces). The better that adjunction, the smaller our traceability gap later.
* The **Wednesday whiteboard** was a Doc object that catalyzed new morphisms (reuse and collaboration lines). Capturing it as a model (not just a PNG) gives us arrows we can actually compose.
* A team using **SysML** already has most arrows; our docs-as-prompts approach helps **connect** their SysML Mod to tests, code, and narrative docs so the whole square commutes.

**Bottom line:** See the pipeline as a small category you control. Name the objects, make the arrows explicit, and insist on diagrams that commute. Everything we care about—clarity, reuse, and speed with safety—follows from that discipline.

