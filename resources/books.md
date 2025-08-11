# Books & Textbooks — Applied Category Theory

*A roadmap of print (and PDF) resources curated for engineers in the **LevelUp** ACT track.*

---

## 🌟 Starter Picks (No Heavy Prereqs)

| Title                                                                              | Authors                              | Why It Matters                                                                                      |
| ---------------------------------------------------------------------------------- | ------------------------------------ | --------------------------------------------------------------------------------------------------- |
| ***Category Theory for Programmers***                                              | Bartosz Milewski                     | Written in a conversational style with code snippets; perfect bridge from FP concepts to formal CT. |
| ***Conceptual Mathematics: A First Introduction to Categories***                   | F. William Lawvere, Stephen Schanuel | Gentle, example‑rich path into categorical thinking; minimal abstract algebra required.             |
| ***Seven Sketches in Compositionality: An Invitation to Applied Category Theory*** | Brendan Fong, David Spivak           | Our primary text: combines narrative, exercises, and real‑world case studies; free PDF.             |

---

## 👩‍💻 Programmer‑Focused Deep Dives

| Title                                     | Authors                                      | Notes                                                                                                          |
| ----------------------------------------- | -------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| ***Programming with Categories*** (draft) | David Spivak, Brendan Fong, Bartosz Milewski | Mirrors their YouTube series; integrates diagrams, code, and exercises.                                        |
| ***Category Theory for the Sciences***    | David Spivak                                 | Shows applications to databases, open dynamical systems, and networks—informing our Airflow & DevSecOps demos. |
| ***Algebraic Databases***                 | David Spivak, Ryan Wisnesky                  | Explores functorial data migration; complements ETL schema‑evolution demos.                                    |

---

## 🔬 Advanced / Reference Texts

| Title                                          | Authors                          | What You’ll Get                                                                 |
| ---------------------------------------------- | -------------------------------- | ------------------------------------------------------------------------------- |
| ***Categories for the Working Mathematician*** | Saunders Mac Lane                | The canonical reference; dense but indispensable for proofs.                    |
| ***Higher Operads, Higher Categories***        | Tom Leinster                     | For those venturing into ∞‑categories and operadic structures.                  |
| ***Basic Category Theory***                    | Tom Leinster                     | Concise refresher once you’ve met the basics.                                   |
| ***Sheaves in Geometry and Logic***            | Saunders Mac Lane, Ieke Moerdijk | Deep dive into topos theory; relevant to formal verification lines of research. |

---

## 🗓️ Suggested 12‑Week Reading Plan

| Week  | Readings                                              | Study‑Group Focus                                 |
| ----- | ----------------------------------------------------- | ------------------------------------------------- |
| 1‑2   | *Conceptual Mathematics* Ch. 1‑4                      | Categories, functors, first string diagrams       |
| 3‑4   | *Seven Sketches* Sketch 1 (Adjacency)                 | Adjunctions & data flow                           |
| 5‑6   | *Seven Sketches* Sketch 2 (Monoids) + CoffeeShop kata | Monoids, monoidal categories, Airflow DAG demo    |
| 7‑8   | *Category Theory for Programmers* Part III            | Monads & computational effects                    |
| 9‑10  | *Category Theory for the Sciences* Ch. 4‑5            | Wiring diagrams, open systems, Kubernetes mapping |
| 11‑12 | *Algebraic Databases* Ch. 1‑3                         | Functorial data migration, ETL schema evolution   |

*(Friday deep‑dive sessions align to this schedule; videos & papers drop in Slack each Monday.)*

---

## 📓 Tips for Reading Math as an Engineer

1. **Write small examples by hand** (Haskell, Python, Clojure) as you read.
2. **Draw diagrams**—a quick sketch often beats chasing symbols.
3. **Ask questions in `#levelup`**—no question is too basic.
4. **Teach back**—present a 5‑minute lightning talk; teaching solidifies understanding.

> *Remember: ACT is a contact sport—proofs run in your head, but insights grow when shared aloud.*
