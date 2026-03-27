# Papers Relevant to the Bradley–Cyberneutics Connection

Compiled 2026-03-22 from conversation on Bradley's IPAM/UCLA talk
(November 2024) and the Bradley-Vigneaux magnitude paper.

Papers marked ✓ are already cited in the cyberneutics references
directory or palgebra documents. Papers marked **NEW** are not yet
cited and should be added.

---

## Bradley's own trajectory

These trace the arc from thesis through enriched-category language
modeling to the magnitude result. Read in order.

1. **Bradley, T.-D.** *At the Interface of Algebra and Statistics.*
   PhD thesis, CUNY Graduate Center, 2020. arXiv:2004.05631.
   — Density operators for joint probability distributions over
   text; partial trace recovers marginals; off-diagonal elements
   encode correlational structure. Foundation for the type-spoof
   detection idea in Pask mesh fitting. ✓ (cited in research-survey.md)

2. **Bradley, T.-D., Stoudenmire, E.M., and Terilla, J.** "Modeling
   Sequences with Quantum States: A Look Under the Hood." *Machine
   Learning: Science and Technology* (2020).
   doi:10.1088/2632-2153/ab8731.
   — Tensor network implementation of the density operator approach;
   addresses the exponential scaling problem (Matrix Product States
   as tractable approximation). Directly relevant to the tractability
   concerns in tractability-and-risks.md. **NEW**

3. **Bradley, T.-D. and Vlassopoulos, Y.** "Language Modeling with
   Reduced Densities." *Compositionality* 3:4 (2021).
   doi:10.32408/compositionality-3-4.
   — Reduced density operators for language; eigenvectors as
   "concepts" extracted from statistical data. The conceptual bridge
   between the thesis machinery and language modeling proper. **NEW**

4. **Bradley, T.-D., Terilla, J., and Vlassopoulos, Y.** "An Enriched
   Category Theory of Language: From Syntax to Semantics."
   *La Matematica* (2022). doi:10.1007/s44007-022-00021-2.
   arXiv:2106.07890.
   — The [0,1]-enriched category of texts; Yoneda embedding as
   semantic representation; copresheaf category as "space of
   meanings." The paper that establishes the enriched-category
   framework for language that Bradley-Vigneaux (2025) builds on.
   **NEW — high priority.** Direct structural parallel to the
   cyberneutics soft type system (both are enriched presheaf
   constructions, different enrichment bases).

5. **Bradley, T.-D.** "Entropy as a Topological Operad Derivation."
   *Entropy* 23(9):1195 (2021). doi:10.3390/e23091195.
   — Shannon entropy characterized as a derivation of the operad of
   topological simplices. Background for the entropy-magnitude
   connection in paper #6. **NEW**

6. **Bradley, T.-D. and Vigneaux, J.P.** "The Magnitude of Categories
   of Texts Enriched by Language Models." *Theory and Applications of
   Categories* 44(37):1256–1281 (2025). arXiv:2501.06662.
   — The paper presented in the IPAM talk. Constructs the [0,1]-enriched
   category of texts explicitly from LLM next-token probabilities;
   passes to generalized metric space via −ln; computes Möbius function
   and magnitude; magnitude function recovers Tsallis entropies, whose
   derivative at t=1 gives Shannon entropy sum. **NEW — high priority.**
   Key connections to cyberneutics: (a) magnitude as pipeline entropy
   diagnostic via calibration register; (b) the −ln passage reveals
   cyberneutics' min-lattice enrichment is already tropical;
   (c) Leinster magnitude applied to LLM-generated text gives a
   worked example of the machinery cyberneutics needs.

7. **Bradley, T.-D., Gastaldi, J.L., and Terilla, J.** "The Structure
   of Meaning in Language: Parallel Narratives in Linear Algebra and
   Category Theory." *Notices of the AMS* 71(2), Feb 2024.
   doi:10.1090/noti2868.
   — Expository paper on how categorical thinking clarifies the
   syntax-to-semantics passage in LLMs. Useful as a register model
   for the "practitioner audience" layer of cyberneutics writing.
   **NEW — lower priority.**

8. **Bradley, T.-D., Parzygnat, A.J., Vlasic, A., and Pham, A.**
   "Towards Structure-Preserving Quantum Encodings." *Phys. Rev.
   Research* 7, 041001 (2025). doi:10.1103/rph8-g15q.
   — Categorical perspective on classical-to-quantum data encoding.
   Tangential but relevant if the density operator approach to type
   membership is pursued. **NEW — low priority.**

---

## Enriched category theory and magnitude

The mathematical backbone: enriched categories, generalized metric
spaces, and the magnitude invariant.

9. **Kelly, G.M.** *Basic Concepts of Enriched Category Theory.*
   Cambridge University Press, 1982.
   — Enrichment axioms (Ch. 1.2, eqs. 1.1–1.4), V-valued presheaves
   (Ch. 2.1), quantale enrichment, coends (Ch. 3.10). ✓

10. **Lawvere, F.W.** "Metric spaces, generalized logic, and closed
    categories." *Rendiconti del Seminario Matematico e Fisico di
    Milano* 43:135–166, 1973.
    — Enriched categories over [0,∞] as generalized metric spaces.
    The foundational insight connecting the probability-to-distance
    passage in Bradley-Vigneaux to cyberneutics' confidence lattice.
    ✓

11. **Leinster, T.** "The magnitude of metric spaces." *Documenta
    Mathematica* 18, 2013.
    — Magnitude as a numerical invariant of enriched categories;
    generalizes Euler characteristic. The invariant that
    Bradley-Vigneaux compute for the language category. ✓ (cited in
    ACT review recommended reading)

12. **Leinster, T. and Shulman, M.** "Magnitude homology of enriched
    categories and metric spaces." *Algebraic & Geometric Topology*
    21(5), 2021. arXiv:1711.00802.
    — Magnitude homology: the categorification of magnitude that
    Bradley-Vigneaux cite for their homology conjectures. Relevant
    if cyberneutics pursues pipeline magnitude beyond the scalar
    invariant. **NEW — medium priority.**

13. **Vigneaux, J.P.** "A combinatorial approach to categorical
    Möbius inversion and pseudoinversion." arXiv:2407.14647, 2024.
    — The computational method Bradley-Vigneaux use to compute
    magnitude. Would be needed for any actual computation of
    pipeline magnitude from calibration register data. **NEW**

14. **Willerton, S.** (Section 4 of arXiv:2501.00416, 2025.)
    — Short introduction to magnitude, referenced by Bradley on
    her blog post. Useful as an accessible entry point. **NEW —
    low priority.**

---

## Markov categories and categorical probability

The framework for stochastic composition in the pipeline.

15. **Fritz, T.** "A synthetic approach to Markov kernels, conditional
    independence and theorems on sufficient statistics." *Advances in
    Mathematics* 370, 2020. arXiv:1908.07021.
    — Markov categories; deterministic morphisms (Def 10.1); Giry
    monad connection (Cor 3.2). The core reference for Layer 2 of
    the cyberneutics three-layer architecture. ✓

16. **Cho, K. and Jacobs, B.** "Disintegration and Bayesian inversion
    via string diagrams." *Mathematical Structures in Computer
    Science* 29(7):938–971, 2019.
    — Bayesian inversion in Markov categories via string diagrams.
    The type assignment kernel τ : Artifacts → Prob(T) as a
    conditional from disintegration of the joint (text, type)
    distribution. ✓

17. **Perrone, P.** "Markov categories and entropy." *IEEE Trans.
    Information Theory* 70(3):1666–1693, 2024.
    — Functorial entropy on Markov categories. Confidence degradation
    as a coarse instance of Perrone's monotonicity. Connects to the
    Bradley-Vigneaux entropy result: both extract entropy from
    categorical structure, but Perrone works in the Markov category
    while Bradley-Vigneaux work via magnitude of the enriched
    category. ✓

18. **Kock, A.** "Monads on symmetric monoidal closed categories."
    *Archiv der Mathematik* 21:1–10, 1970.
    — Commutative monads. Prerequisite for Fritz Cor 3.2 (Giry monad
    → Markov category). ✓

19. **Heunen, C., Kammar, O., Staton, S., and Yang, H.** "A
    convenient category for higher-order probability theory."
    *LICS 2017.*
    — Quasi-Borel spaces as ambient category for Text. ✓

20. **Jacobs, B.** "Probabilities, distribution monads, and convex
    categories." *Theoretical Computer Science* 412(28), 2011.
    — Distribution monads, convex algebras. Connects Giry monad to
    probability-valued type membership. ✓

---

## Open and interconnected systems

Decorated cospans, open games, operads — the compositional
architecture story.

21. **Fong, B.** *The Algebra of Open and Interconnected Systems.*
    PhD thesis, Oxford, 2016, Chapters 2–4.
    — Decorated cospans; pushout composition. Pipeline wiring as an
    instance of Fong's construction. ✓

22. **Fong, B. and Spivak, D.I.** *Seven Sketches in
    Compositionality.* Cambridge University Press, 2019.
    — Resource theories (Ch. 2), string diagrams. ✓

23. **Ghani, N., Hedges, J., Winschel, V., and Zahn, P.**
    "Compositional game theory." *LICS 2018.*
    — Open games. Foundation for committee-as-open-game.md. ✓

24. **Spivak, D.I.** "The operad of wiring diagrams." arXiv:1305.0297,
    2013.
    — Operads for multi-input/output systems. ✓

---

## Tropical geometry and adjacent

The tropical connection that emerges from the −ln passage.

25. **Vlassopoulos, Y. and Gaubert, S.** "Tropical geometry and
    language models." arXiv:2405.12264, 2024.
    — Connects the Bradley-Terilla-Vlassopoulos enriched language
    category to tropical geometry; representable functors as extremal
    rays. Directly relevant because cyberneutics' min-lattice
    enrichment is already a tropical semiring structure. **NEW —
    medium priority.**

---

## Quantales and enrichment bases

26. **Rosenthal, K.I.** *Quantales and their Applications.* Pitman
    Research Notes 234, 1990.
    — Product quantales (Prop 1.2.2). Used for V₅. ✓

27. **Atkey, R.** "Syntax and Semantics of Quantitative Type Theory."
    *LICS 2018.*
    — Graded types and resource tracking. ✓

28. **Danos, V. and Ehrhard, T.** "Probabilistic coherence spaces as
    a model of higher-order probabilistic computation." *Information
    and Computation* 209(6):966–991, 2011.
    — Probabilistic coherence spaces. ✓

---

## Summary of NEW additions needed

| # | Paper | Priority | Connection |
|---|-------|----------|------------|
| 2 | Bradley, Stoudenmire, Terilla (2020) — quantum states for sequences | Medium | Tractability of density operator approach |
| 3 | Bradley & Vlassopoulos (2021) — reduced densities | Medium | Concept extraction via eigenvectors |
| 4 | Bradley, Terilla, Vlassopoulos (2022) — enriched category of language | **High** | Direct structural parallel to soft type system |
| 5 | Bradley (2021) — entropy as operad derivation | Low | Background for magnitude-entropy link |
| 6 | Bradley & Vigneaux (2025) — magnitude of text categories | **High** | Magnitude as pipeline entropy diagnostic; tropical connection |
| 7 | Bradley, Gastaldi, Terilla (2024) — AMS Notices | Low | Expository register model |
| 8 | Bradley et al. (2025) — quantum encodings | Low | Tangential |
| 12 | Leinster & Shulman (2021) — magnitude homology | Medium | Categorification of magnitude |
| 13 | Vigneaux (2024) — combinatorial Möbius inversion | Medium | Computational method for magnitude |
| 14 | Willerton (2025) — magnitude intro | Low | Accessible entry point |
| 25 | Vlassopoulos & Gaubert (2024) — tropical geometry + language | Medium | Min-lattice is tropical |
