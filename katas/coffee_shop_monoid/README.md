# CoffeeShop Monoid Kata

> **Goal (15–30 min):** Implement a tiny *order combine* operation and use **law-based tests** to show it forms a **monoid** (associativity + identity).

**Who this is for.** Engineers sampling Applied Category Theory (ACT) with hands-on practice.

**Environment.** Use what you prefer:

* **Jupyter / Google Colab** (recommended for quick starts)
* **VS Code (fallback)** or any local IDE/terminal you already use

**Quick links:**

* ➡ Test plan: [test-plan.md](./test-plan.md)
* ➡ LLM coach prompt: [student-llm-coach.md](./student-llm-coach.md)

---

## Why this kata exists

Monoids give you **composition with guarantees**: a set `S`, an associative binary operation `⋆ : S×S → S`, and an identity element `e ∈ S` such that `e ⋆ x = x ⋆ e = x`. In practice, these laws **collapse boilerplate tests** and make refactors safer. This kata uses a simple **coffee order** model to make the laws concrete.

---

## What you’ll build

A pure function `combine(a, b) -> order` that merges two **orders**.

* An **order** is a finite collection of line items (e.g., *item → quantity*). Keep it minimal—no prices, taxes, or discounts.
* **Identity** is the **empty order**.
* **Associativity** must hold: `combine(a, combine(b, c)) == combine(combine(a, b), c)`.

> Keep scope tight. You can extend later (prices, taxes), but start with **quantities only** to avoid rounding issues.

---

## Prerequisites

* Python 3.10+
* [`pytest`](https://docs.pytest.org/) and [`hypothesis`](https://hypothesis.readthedocs.io/)

**Install locally:**

```bash
python -m venv .venv && source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -U pip hypothesis pytest
```

**In Colab (one-time per session):**

```bash
!pip -q install hypothesis pytest
```

---

## How to run

### In a Notebook / Colab

1. Install deps (see above).
2. Put your model + `combine` in one cell, tests in another.
3. Use Hypothesis on test functions (decorated with `@given(...)`). Run the cell to execute tests.
4. You can also run the full suite via: `!pytest -q`.
5. When a property fails, discuss the **minimal counterexample** Hypothesis shows.

### Locally (VS Code or terminal)

```bash
pytest -q
```

* Red → Green → Refactor loop.
* If you use VS Code, you can enable *Python: Testing* and *Pytest* discovery; otherwise the CLI above is fine.

---

## Tasks (TDD-style)

1. **Model** a minimal order (e.g., mapping *string → non‑negative int*). Write down invariants.
2. **Implement** `combine(a, b)` as a **pure** operation (avoid in-place mutation).
3. **Example tests** (readability): a few table-top cases.
4. **Property tests** (power): identity and associativity with randomized orders.
5. **Edge cases**: empty orders, overlapping items, zero quantities.
6. **(Optional)** Explore commutativity. It is **not** required by monoids—decide if your model should commute and document it.

---

## Edge cases & invariants (decide explicitly)

* **Identity:** the empty order is neutral.
* **Quantities:** non‑negative integers only.
* **Zeros:** if a line total becomes zero, does it disappear? (recommended: yes → canonical form)
* **Case & keys:** treat item names canonically (e.g., lowercased) or require exact match. Choose and stick to it.
* **Ordering:** result ordering is irrelevant (compare as sets/maps, not sequences).

---

## Learning outcomes

* State **identity** & **associativity** precisely for a concrete model.
* Write **example tests → property tests** with Hypothesis.
* Diagnose **minimal counterexamples** and refactor safely.

---

## Teaching notes (for facilitators)

* **Remove identity** and re-run: watch properties fail; discuss why.
* **Associativity’s payoff:** fewer test permutations; refactors don’t explode test count.
* **Law ⇄ Design pressure:** laws uncover hidden assumptions (e.g., negative quantities, duplicate keys).

---

## Breadcrumbs (for monthly reporting)

* Add a short note to your running log: date, environment, time spent, any surprises.
* If you made a design choice (e.g., zero handling), record it in a `DECISIONS.md` or commit message.

---

Changelog

* 2025-08-22: Initial version (mg)
* 2025-08-22: Added quick links, Colab `!pytest` note, learning outcomes
