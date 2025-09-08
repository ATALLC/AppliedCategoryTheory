# Schema Migrations through the ACT Lens

*(Seven Sketches, Ch. 3 – Databases)*

**Goal.** Give teams a shared, category-theoretic vocabulary for data migration—so we can specify and test migrations as *structured maps* rather than ad-hoc scripts.

## 1) Setup: three “worlds”

* **Concept** (informal domain model): the mental picture engineers use (e.g., *Patient*, *Encounter*, *Allergy*). Intentionally fuzzy.
* **Legacy** (schema & data): MUMPS schema (tables/“globals”, keys) with actual rows.
* **Target** (schema & data): RDBMS schema (tables, FKs, constraints) with rows to be populated.

Minimal ASCII sketch:

```
Concept  --encode_L-->  Legacy schema
   |                      |
   |                      |  (instances: data on that schema)
   v                      v
 encode_R-->  Target schema
      \
       \__ migration ==>  Target data
```

* **Schemas as categories.** Objects = tables (entity types); morphisms = foreign keys / reference arrows.
* **Databases as instances.** A database on schema 𝒮 is a **Set-valued functor** 𝕀 : 𝒮 → Set (rows per table; functions for FKs).
  *(Seven Sketches, Ch. 3 “Databases”: schemas as categories; instances as Set-functors.)*

## 2) Core ACT vocabulary for migrations

* **Schema mapping.** A functor $F : \mathcal{S}_{\text{legacy}} \to \mathcal{S}_{\text{target}}$ describes how legacy tables/keys land in target tables/keys.
* **Data migration functors** along $F$:

  * **Δ\_F** (pullback/reindex): Set$^{\mathcal{S}_{\text{target}}}$ → Set$^{\mathcal{S}_{\text{legacy}}}$ — “look up target data *as if* it lived on legacy.”
  * **Σ\_F** (left pushforward): Set$^{\mathcal{S}_{\text{legacy}}}$ → Set$^{\mathcal{S}_{\text{target}}}$ — merge/union-like population.
  * **Π\_F** (right pushforward): Set$^{\mathcal{S}_{\text{legacy}}}$ → Set$^{\mathcal{S}_{\text{target}}}$ — join/product-like population.
    *(Seven Sketches, Ch. 3 “Functorial Data Migration”: Δ, Σ, Π as Kan extensions along schema functors.)*
* **Data morphisms.** Natural transformations between instances on the same schema (row-wise maps respecting FKs). These are *typed migrations* at fixed schema.
  *(Seven Sketches, Ch. 3 “Instances and Transformations”.)*

## 3) Where “Concept” fits

* The **Concept** side is *not* a strict category yet (it’s intentionally fuzzy). We make it actionable by carving out a **small concept schema** $\mathcal{C}$: just the entities/relations we care to preserve (names, relationships, invariants).
* Then provide **encoding functors** $E_L : \mathcal{C} \to \mathcal{S}_{L}$ and $E_R : \mathcal{C} \to \mathcal{S}_{R}$. These assert how conceptual structure is realized in each database.

Resulting “migration square” to check:

```
          E_L                    F
   C  ------------>  S_L  ---------------->  S_R
   |                   |                        |
   | ⟦data⟧            | Σ/Π/Δ along F          | (Target instance)
   v                   v                        v
 (Concept instance)  Legacy data  ——⇒——>  Migrated Target data
```

We want this square to **almost commute**: the Target data obtained by (Concept → Target) should match the result of (Concept → Legacy → migrate). *Deviation = drift* to investigate (missing columns, denormalizations, code tables, coercions).

## 4) Practical recipe (5 steps)

1. **Cut a concept schema** $\mathcal{C}$: entities, keys, essential relations, and the invariants to preserve.
2. **Map schemas.** Draft $F : \mathcal{S}_L \to \mathcal{S}_R$. If Target refactors (e.g., splits Patient into Person+Patient), let $F$ encode that.
3. **Choose migration functors.** Use **Σ\_F** for union/aggregation-like population; **Π\_F** for constraint-preserving joins; **Δ\_F** for selective projection/reindexing.
4. **Specify naturality checks.** For each relationship/invariant in $\mathcal{C}$, write a **commutativity test**: does the relationship survive Legacy ⇒ Target? (Think property-based tests derived from Concept.)
5. **Close the loop.** Where squares fail to commute, either (a) refine $\mathcal{C}$, (b) adjust $F$/ETL, or (c) document an intentional divergence with rationale.

## 5) When you’re using MBSE/SysML

Your SysML domain model can seed $\mathcal{C}$. Block definitions become objects; associations become morphisms. The same Δ/Σ/Π toolkit then governs how those relationships survive the migration.

## 6) Why this beats ad-hoc ETL

* **Explicit semantics.** You declare what must be preserved (the arrows), not just how rows move.
* **Testable.** Commutativity becomes unit/property tests over instances.
* **Composable.** Complex migrations are built by composing schema functors and their Δ/Σ/Π adjoints.
  *(Seven Sketches, Ch. 3: adjunctions/Kan-extension view explains why these compose well.)*

---

### References (Seven Sketches in Compositionality, Fong & Spivak)

* **Ch. 3 – Databases.**
  *Schemas as categories; database instances as functors; natural transformations as data morphisms; functorial data migration (Δ, Σ, Π) via Kan extensions.*
* Optional refresher: **Ch. 1–2** for category basics and compositional diagrams.

*(Tip: bring a photo of your current schema diagram. Label it as a category: nodes = tables; arrows = FKs. Then try writing one commutativity test.)*
