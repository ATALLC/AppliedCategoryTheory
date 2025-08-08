# Research & Practitioner Papers — Applied Category Theory

*These papers form the backbone of our **LevelUp** study track. Each entry includes a quick “why it matters” blurb so you can decide where to dive first.*

---

## 🌱 Foundational Reading

| Paper                                                               | Year | Why It Matters                                                                                                |
| ------------------------------------------------------------------- | ---- | ------------------------------------------------------------------------------------------------------------- |
| Eilenberg & Mac Lane — *General Theory of Natural Equivalences*     | 1945 | Birth of category theory—short, surprisingly readable; defines categories, functors, natural transformations. |
| Lawvere — *Functorial Semantics of Algebraic Theories*              | 1963 | Introduces the idea of treating theories as categories and models as functors—core to “applied” CT.           |
| Mac Lane — *Categories for the Working Mathematician* (Chap. 1 PDF) | 1971 | Canonical reference; first chapter covers definitions we reuse constantly.                                    |

---

## 👩‍💻 Programming & Type Theory

| Paper                                                       | Year | Why It Matters                                                                                    |
| ----------------------------------------------------------- | ---- | ------------------------------------------------------------------------------------------------- |
| Moggi — *Notions of Computation and Monads*                 | 1991 | Connects monads to computational effects—cornerstone for functional‑programming abstraction.      |
| Wadler — *Monads for Functional Programming*                | 1992 | Pragmatic follow‑up that popularized monads in Haskell; good bridge from category jargon to code. |
| Crole & Pitts — *New Foundations for Fixpoint Computations* | 1992 | Links fixed‑point semantics to category‑theoretic recursion schemes.                              |
| Rivas & Jaskelioff — *Comonads and Coalgebras: A Tutorial*  | 2017 | Friendly treatment of comonads—useful for streaming and context‑dependent computations.           |

---

## 🏗️ Data / AI Systems

| Paper                                                                | Year | Why It Matters                                                                                                |
| -------------------------------------------------------------------- | ---- | ------------------------------------------------------------------------------------------------------------- |
| Spivak — *Category Theory for the Sciences* (selected sections)      | 2014 | Shows how wiring diagrams model data pipelines and open systems; motivates our Airflow DAG demo.              |
| Patterson et al. — *Catlab: Typed, Compositional Modeling for Julia* | 2021 | Demonstrates a concrete CT‑powered DSL and library—valuable design patterns for our own tooling.              |
| Ghica — *Diagrammatic Reasoning for Artificial Intelligence*         | 2020 | Explores string diagrams as an explanatory tool for neural nets and reasoning systems.                        |
| Fong, Spivak, Tuyéras — *Backprop as Functor*                        | 2019 | Recasts back‑propagation as a functor on parameterised differentiable functions—helps clarify AI composition. |

---

## 🔐 DevSecOps & Compliance

| Paper                                                                 | Year | Why It Matters                                                                           |
| --------------------------------------------------------------------- | ---- | ---------------------------------------------------------------------------------------- |
| Fairbanks — *Compositional Verification of Information Flow Policies* | 2018 | Treats security policies as categorical morphisms; blueprint for CMMC compliance proofs. |
| Shinnar et al. — *Composable Network Policies*                        | 2019 | Category‑theoretic model for network ACLs—maps directly to DevSecOps pipeline stages.    |

---

## 🎨 Graphical Languages & String Diagrams

| Paper                                                                     | Year | Why It Matters                                                                       |
| ------------------------------------------------------------------------- | ---- | ------------------------------------------------------------------------------------ |
| Selinger — *A Survey of Graphical Languages for Monoidal Categories*      | 2011 | Definitive guide to string‑diagram syntax; underpins our “wire‑it‑compile‑it” demos. |
| Baez & Stay — *Physics, Topology, Logic and Computation: A Rosetta Stone* | 2011 | Connects CT diagrams across disciplines—great for cross‑track insights.              |

---

## 🛠️ Case Studies & Industrial Reports

| Paper / Report                                                               | Year | Why It Matters                                                                                |
| ---------------------------------------------------------------------------- | ---- | --------------------------------------------------------------------------------------------- |
| Tristen & Spivak — *Diagrammatic Algebra: From Linear to Concurrent Systems* | 2018 | Industrial examples of wiring diagrams in control systems—mirrors our Kubernetes DAG mapping. |
| Dropbox Infra Team — *Composable Pipelines with Monoidal Categories*         | 2022 | Real‑world write‑up of CT helping tame complex ETL workflows.                                 |

---

## 📁 Archive & Further Reading

*The full, uncurated dump from `long-list.org` lives at **`archive/long-list.org`**. Feel free to mine it for niche topics.*

> *Tip: For Friday deep‑dive sessions we usually annotate one or two of these papers with questions—watch `#levelup-act` for weekly picks.*
