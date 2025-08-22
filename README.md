# Applied Category Theory for Software Engineers

> *Programming is just category theory by other means.*

> *“Category theory is the mathematics of **composition**.  Software engineering is the **practice** of composition.”*

Welcome!  This repository is the **hands‑on playground** for engineers learning Applied Category Theory (ACT) through the **LevelUp** program.  Everything here aims to turn abstract diagrams and proofs into code, infrastructure, and AI workflows you can run today.

👉 **New to LevelUp?** See the companion page **[Applied Category Theory in LevelUp](https://github.com/ATALLC/LevelUp/blob/master/pages/applied-category-theory-in-levelup.md)** for the bigger picture, quick wins, and how ACT threads through our projects.

---

## Table of Contents

1. [Why ACT?](#why-act)
2. [Quick Start / Show Me It’s Useful](#quick-start--show-me-its-useful)
3. [Texts](#texts)
4. [Study‑Group Logistics](#study-group-logistics)
5. [Repository Map](#repository-map)
6. [Where We Use This Today](#where-we-use-this-today)
7. [Contributing](#contributing)
8. [License & Attribution](#license--attribution)

---

## Why ACT?

* ACT gives us **unifying patterns**—functors, monoids, lenses—that appear in type systems, data pipelines, DevSecOps policy graphs, and prompt engineering.
* It lets us **prove** system properties (correctness, compositionality, compliance) rather than relying on endless tests.
* Diagrammatic reasoning keeps complex systems **visual & tractable** for humans.

If you’ve ever chained functions, built a Kubernetes DAG, or massaged JSON into SQL, you’re already thinking categorically—this repo just makes it explicit.

---

## Quick Start  / Show Me It’s Useful

| ⏱️ Time     | Activity                                                                                                                           | Outcome                                                              |
| ----------- | ---------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| **15 min**  | Read [*Engaging with Mathematics*](./resources/engaging-with-mathematics.md), then run the `CoffeeShopMonoid` kata (Python).                        | See how category‑style thinking collapses boilerplate tests.         |
| **1 hour**  | Watch an ACT [video](./resources/videos.md) and replicate the **Wiring‑Diagram ⇒ Airflow DAG** demo. | Map a string diagram directly into a running pipeline.               |
| **½ day**   | Pair‑program on a **PromptCritical** prompt redesign using categorical lenses.                                                     | Measurable uplift in LLM performance.                                |
| **Ongoing** | Join live sessions & Discord/Slack discussions.                                                                                    | Build intuition via proofs, peer critique, and real project tie‑ins. |

---

## Texts

The main text:

   * [Seven Sketches in Compositionality: Invitation to Applied Category Theory](https://arxiv.org/pdf/1803.05316.pdf).
     This is the textbook used in [Applied Category Theory lectures](https://www.youtube.com/watch?v=UusLtx9fIjs&t=525s&index=2&list=PLhgq-BqyZ7i5lOqOqqRiS0U5SwTmPpHQ5) from MIT.
     NOTE: The numbering of exercises and examples is different in the PDF!
     We use the numbering in the printed textbook.

You should also get at least one of these two supplemental texts:

  * [Conceptual Mathematics: A first introduction to categories](https://www.amazon.com/Conceptual-Mathematics-First-Introduction-Categories/dp/052171916X), Lawvere and
    Schanuel; this is the most approachable one I've found yet.

  * [Category Theory in Context](http://www.math.jhu.edu/~eriehl/context.pdf), Emily Riehl; for the mathematically inclined.


If you're a programmer:
   * [The Dao of Functional Programming](https://github.com/BartoszMilewski/Publications/blob/master/TheDaoOfFP/DaoFP.pdf)

---

## Study‑Group Logistics

| When (ET)           | Focus                                                    | Channel                       |
| ------------------- | -------------------------------------------------------- | ----------------------------- |
| **Monday 2 pm**     | Practical tech sessions, workshops                          | `#level-up` (Slack) & Teams |
| **Wednesday 12 pm** | Practical tech sessions, workshops                          | `#level-up` & Teams         |
| **Friday 12 pm**    | **Dedicated ACT deep dive** (research topic of the week) | `#level-up` & Teams         |

> Full calendar & Teams links live in the LevelUp shared calendar.

---

## Repository Map

```
/
├── README.md               ← you are here
├── katas/                  # bite‑sized exercises (monoids, functors, profunctors)
├── demos/                  # end‑to‑end examples (wiring‑diagram ⇒ Airflow DAG, etc.)
├── resources/
│   ├── videos.md           # curated talk & lecture playlist  📺
│   ├── papers.md           # seminal & practical research papers  📄
│   └── books.md            # recommended books & chapters  📚
├── pages/                  # study materials, notes
├── slides/                 # reveal.js presentations (HTML)
├── Makefile                # `make pack` to bundle uploads for ChatGPT
└── …
```

> Massive link lists have been **moved into [resources](./resources)** to keep this README scannable.

---

## Where We Use This Today

* **Prompt Engineering** – `failter`, `PromptCritical`, and `qat` model prompts as morphisms; functor tweaks have yielded >20 % output‑quality gains.
* **DevSecOps** – policy composition and **CMMC** compliance proofs expressed as compositional pipelines.
* **Data Pipelines** – ETL schema‑evolution demo shows how monoidal categories map cleanly onto Airflow DAGs.
* **Project Wingman** – categorical lenses coordinate multi‑agent LLM workflows.

> **Bring your own problems**—we’ll model them together in live sessions.

---

## Contributing

Reading is good; **experimenting, questioning, and teaching back are better**.  To contribute:

1. Fork the repo and hack on a kata or demo.
2. Run `make pack` to bundle new docs/code for ChatGPT uploads.
3. Open a PR **or** share your branch in `#level-up` for early feedback.

We welcome issues, examples, and errata—especially from real production pain points.

---

## License & Attribution

Code is MIT‑licensed unless noted.  Slides and papers retain their original licenses; see headers in [resources](resources) for details and attribution guidelines.
