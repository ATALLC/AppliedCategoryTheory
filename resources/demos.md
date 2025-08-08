# Hands‑On Demos — From Diagram to Running Code

*Quick pathways to **see** Applied Category Theory in action.  Clone ⇢ run ⇢ tinker.*

---

## 🚦 Wiring Diagram ⇒ Airflow DAG

| Path                 | What It Demonstrates                                                                                                   | How to Run                                                                         |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `demos/airflow_dag/` | Translating a compositional **wiring diagram** (defined in Catlab.jl) into a fully‑schedulable **Apache Airflow** DAG. | `make up` spins Dockerized Airflow; `python generate_dag.py` compiles the diagram. |

*Concepts*: Monoidal categories, string diagrams, functorial semantics.

---

## 🤖 Prompt Engineering with Lenses

| Path                   | What It Demonstrates                                                                                               | How to Run                                                                          |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- |
| `demos/prompt_lenses/` | Uses **profunctor lenses** to compose prompt templates; integrates with **PromptCritical** to auto‑evolve prompts. | `pip install -r requirements.txt && python lens_prompt.py` then inspect `results/`. |

*Concepts*: Profunctors, optics, prompt morphisms.

---

## 🍵 CoffeeShop Monoid Kata (Python)

| Path                        | What It Demonstrates                                                                                              | How to Run                                |
| --------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| `katas/coffee_shop_monoid/` | Shows how a simple order‑combining function forms a **monoid**; property‑tests verify associativity and identity. | `pytest` (property‑tests via Hypothesis). |

*Concepts*: Monoids, law‑based testing.

---

## 🔐 DevSecOps Policy Composition

| Path                      | What It Demonstrates                                                                                 | How to Run                                       |
| ------------------------- | ---------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| `demos/devsecops_policy/` | Models security policies as morphisms; uses **Catlab.jl** to compose and verify **CMMC** compliance. | `julia --project -e "include('policy_demo.jl')"` |

*Concepts*: Posets as categories, compositional verification.

---

## 🗄️ Functorial Data Migration

| Path                    | What It Demonstrates                                                          | How to Run                                  |
| ----------------------- | ----------------------------------------------------------------------------- | ------------------------------------------- |
| `demos/functorial_etl/` | Expresses schema evolution as functors; auto‑generates SQL migration scripts. | `docker-compose up db && python migrate.py` |

*Concepts*: Functors, natural transformations, algebraic databases.

---

## 🏃 Getting Started

```bash
# Clone repo
$ git clone https://github.com/ATALLC/AppliedCategoryTheory.git
$ cd AppliedCategoryTheory

# Pick a demo
$ cd demos/airflow_dag

# Follow the run instructions in that demo’s README
```

> *Open a PR to add your own demo!  We especially welcome examples that bridge ACT with DevOps, ML Ops, or large‑scale infra.*
