# CoffeeShop Monoid Kata — Test Plan

**Scope.** Validate that `combine(a, b) -> order` forms a **monoid** over the chosen order model and that the implementation is **pure** and **canonical**.

**Environments.** Notebook/Colab (preferred) or local (VS Code/terminal). Tests must run identically in both.

**Quick links:** [README.md](./README.md) · [student-llm-coach.md](./student-llm-coach.md)

---

## 1) Files & Structure

* `tests/test_coffee_monoid_examples.py` — readable example tests
* `tests/test_coffee_monoid_properties.py` — Hypothesis properties

*(In notebooks, mirror these as two sections.)*

---

## 2) Model & Invariants (declare explicitly)

* **Order**: finite mapping `item: str → quantity: int` with `quantity ≥ 0`.
* **Identity**: empty order `e`.
* **Canonical form**: decide and document:

  * **Zeros** dropped (recommended) or kept.
  * **Key normalization** (e.g., lowercase) or exact match.
* **Purity**: `combine` must **not** mutate inputs.
* **Equality**: compare as mappings (order‑insensitive). If you don’t enforce canonical form, compare via a normalized view.

---

## 3) Data Generation Strategies (Hypothesis)

* **Keys**: small alphabet strings (e.g., `a..d`), length 1–8; normalize per policy.
* **Quantities**: integers `0..20` (expand later if needed).
* **Orders**: dicts with ≤ 6 entries.
* **Identity**: the empty dict `{}`.

*Rationale:* bounded domains keep counterexamples small and runs fast; expand limits after green.

---

## 4) Example Tests (readability & fast feedback)

1. **Identity (left/right)**

   * `combine({'latte': 1}, {}) == {'latte': 1}`
   * `combine({}, {'latte': 1}) == {'latte': 1}`
2. **Disjoint merge**

   * `combine({'latte': 1}, {'mocha': 2}) == {'latte': 1, 'mocha': 2}`
3. **Overlapping keys sum**

   * `combine({'latte': 1}, {'latte': 2}) == {'latte': 3}`
4. **Zero handling (per policy)**

   * If zeros dropped: `combine({'latte': 1}, {'latte': 0}) == {'latte': 1}`
5. **Purity**

   * Deep‑copy inputs before calling `combine` and assert originals unchanged (e.g., using `copy.deepcopy`).

---

## 5) Property Tests (laws & invariants)

1. **Identity law**

   * ∀ order `o`: `combine(o, e) == o` and `combine(e, o) == o`.
2. **Associativity law**

   * ∀ `a, b, c`: `combine(a, combine(b, c)) == combine(combine(a, b), c)`.
3. **Canonical form** *(if adopted)*

   * Output contains no zero‑quantity lines; key normalization applied.
4. **No negatives**

   * ∀ outputs `o`: `min(o.values(), default=0) ≥ 0`.
5. **(Optional) Commutativity**

   * Only if intended: `combine(a, b) == combine(b, a)`.

**Hypothesis Settings**

* Start small (e.g., 50–100 examples) while iterating; raise after green.
* Set a seed to reproduce tricky failures: `HYPOTHESIS_SEED=12345 pytest -q`.

---

## 6) Edge Cases & Special Checks

* Empty inputs on both sides.
* Many overlapping keys vs. disjoint sets.
* Keys differing only by case/whitespace if normalization chosen.
* Upper‑bound quantities to catch overflow/assumptions.

---

## 7) Oracles & Comparison

* Prefer mapping equality (`==`) when outputs are canonical.
* Otherwise, compare via a **normalized view**: a small helper in tests that applies your zero/key policy before comparison (keep helper in test code to avoid coupling to production code).

---

## 8) Failure Triage Procedure

1. Capture the **minimal counterexample** printed by Hypothesis.
2. Classify: mutation, zero‑policy, key‑policy, or merge‑logic.
3. Reproduce with a deterministic example test.
4. Fix with the smallest change; re‑run examples → properties.
5. Record a short **decision note** if policy changed (breadcrumb).

---

## 9) Performance & Stability

* Keep strategies bounded to avoid long shrinks.
* If associativity runs slow, reduce dict size or key alphabet temporarily.
* Avoid global state; keep `combine` pure to improve shrink quality.

---

## 10) Running & Repro

* **Notebook/Colab**: run property cells repeatedly after changes; or run the full suite with `!pytest -q`.
* **Local**: `pytest -q` (optionally `-k` to focus failures).
* Log the **Hypothesis seed** in your notes for reproducibility.

---

## 11) Exit Criteria (Definition of Done)

* All **example tests** pass and remain readable.
* **Identity** and **associativity** properties pass at current bounds.
* Purity verified; canonical form enforced (if chosen).
* Decisions documented; breadcrumbs added to notes or commit messages.

---

## 12) Stretch Goals

* Introduce integer **prices** and show which laws still hold.
* Port the same properties to another domain (e.g., string concat) to reinforce the pattern.

---

Changelog

* 2025-08-22: Initial version (mg)
* 2025-08-22: Clarified purity check (deep‑copy), added seed guidance, quick links
