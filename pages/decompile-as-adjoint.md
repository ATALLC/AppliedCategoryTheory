# Compilation and Decompilation as Adjoints

## TL;DR

Treat **compile** and **decompile** as an adjoint pair between ordered sets of programs:

$$
\textbf{compile}\; c: S \to B, \qquad \textbf{decompile}\; d: B \to S
$$

Equip sources $S$ and binaries $B$ with sensible preorders (what it means to be “no more informative/expressive than”). If $c$ and $d$ are monotone and satisfy

$$
c \circ d = \mathrm{id}_B,
$$

then $c \dashv d$ is a **Galois insertion**. The composite

$$
N := d \circ c : S \to S
$$

is a **closure operator** (monotone, idempotent, extensive) that maps any source to its **essential source**—a canonical normal form capturing exactly what the compiler preserves. Two sources are **compilation-equivalent** iff $c(s_1)=c(s_2)$, and $N$ picks a representative for each such class.

---

## 1) What are we ordering?

We need minimal structure to talk about adjoints: just **preorders** (reflexive, transitive).

* $S$ (sources): choose $\le_S$ to mean “no more information/behavior than.”
  Examples: fewer comments/whitespace; fewer macro expansions; less undefined behavior; same observable I/O.
* $B$ (binaries): choose $\le_B$ similarly (e.g., “no more observable behavior under the platform model”).

Only monotonicity is required:

$$
s_1 \le_S s_2 \Rightarrow c(s_1) \le_B c(s_2), \qquad
b_1 \le_B b_2 \Rightarrow d(b_1) \le_S d(b_2).
$$

> You do not need to fix a single universal preorder. Pick the one that matches the story you’re telling (bit-exactness, behavioral equivalence, security policy, etc.), and state it.

---

## 2) The adjunction law

A **Galois connection** between posets $S$ and $B$ is a pair $c \dashv d$ such that for all $s \in S, b \in B$,

$$
c(s) \le_B b \quad\text{iff}\quad s \le_S d(b).
$$

If, in addition, $c \circ d = \mathrm{id}_B$, we get a **Galois insertion**. This matches the idealized “correct decompiler” round-trip:

* **Binary preservation (retraction):** decompile then compile gives you the same binary: $c(d(b)) = b$.
* **Essentialization (closure):** $N := d \circ c$ expands a source to the **least** source above it that the compiler cannot distinguish from it.

From the adjunction we obtain the **unit** and **counit**:

* **Unit** $\eta: \mathrm{id}_S \Rightarrow d \circ c$, components $\eta_s: s \le_S N(s)$.
* **Counit** $\varepsilon: c \circ d \Rightarrow \mathrm{id}_B$. In a Galois insertion $\varepsilon$ is the identity (bit-exact round-trip).

---

## 3) Essential sources and normalization

The operator $N = d \circ c$ is:

* **Monotone:** $s \le_S t \Rightarrow N(s) \le_S N(t)$
* **Extensive:** $s \le_S N(s)$ (it never loses what the compiler already knew)
* **Idempotent:** $N(N(s)) = N(s)$

So $N$ is a **closure operator**. Its **fixpoints** $E := \{s \in S \mid N(s)=s\}$ are the **essential sources**. Think of $E$ as the “reflection” of $B$ inside $S$: every binary has a canonical essential source $d(b) \in E$, and every source retracts to its essential form by $N$.

Programmer’s rule of thumb:

> “Normalize before compare.”
> If your comparison is meant to ignore exactly what the compiler ignores, compare $N(s_1)$ with $N(s_2)$.

---

## 4) Equivalence classes and quotients

Define compilation-equivalence:

$$
s_1 \sim s_2 \quad \stackrel{\mathrm{def}}{\Longleftrightarrow}\quad c(s_1) = c(s_2).
$$

* $\sim$ is a congruence w\.r.t. any composition you admit on sources (e.g., linking, module composition) provided $c$ respects that composition.
* The quotient $S/{\sim}$ is (up to isomorphism) the image of $c$. With $c \circ d = \mathrm{id}_B$, every equivalence class has the essential representative $N(s) \in E$, and $B \cong E$ via $d$ and $c$.

Categorically: $E$ is a **reflective subcategory** of $S$ with reflector $N$.

---

## 5) What to assert and test in practice

You can encode the theory as property tests around your toolchain.

**Round-trips**

* **Binary round-trip (must-hold):** `compile(decompile(b)) == b`.
* **Source normalization (idempotence):** `normalize := decompile ∘ compile`; then `normalize(normalize(s)) == normalize(s)` and `s ≤ normalize(s)` (interpret “≤” as your intended preorder).

**Monotonicity**
If you model $\le$ concretely (e.g., “drop comments,” “expand macros”), check that `compile` and `decompile` are monotone with respect to it.

**Equivalence stability**
If `link` is your composition, require:
`compile(link(s1, s2)) == linkB(compile(s1), compile(s2))` (a homomorphism condition), then $\sim$ is a congruence.

---

## 6) Real-world caveats (and how the math bends)

The ideal law $c \circ d = \mathrm{id}_B$ is strong. Here’s how to relax it without losing the story.

* **Approximate decompilers (under-approximation):** You might only guarantee $c \circ d \le_B \mathrm{id}_B$ (you recover a binary no **more** informative than the original—e.g., you canonicalize relocations). Still a Galois **connection** $c \dashv d$, not an insertion.
* **Abstract compilation:** If your $\le$ encode behavioral inclusion, compilers that apply optimizations are still monotone; the closure $N$ describes a **normal form wrt the optimizer**.
* **Non-total decompilers:** Partiality can be modeled with a bottom element $\bot$ or an option type in a richer category; the same adjoint shape reappears once you totalize.

Think “adjunction first,” then choose how strict your equalities need to be.

---

## 7) Worked micro-example

Let $S$ be toy source programs; define $\le_S$ by “ignores comments and whitespace.”
Let $B$ be bytecode; define $\le_B$ by exact bytes (discrete order).

* $c$ strips comments/whitespace and compiles to bytecode.
* $d$ pretty-prints bytecode with canonical formatting and no comments.

Then $c \circ d = \mathrm{id}_B$ (printing then compiling gives the same bytes).
$N = d \circ c$ is “strip + canonical pretty-print”—an idempotent formatting pass. Two sources compile to the same bytes iff their normalized forms are textually equal.

Swap the preorder on $B$ to “modulo relocation addresses,” and the law becomes $c \circ d \le_B \mathrm{id}_B$ (you may canonicalize addresses on the way back).

---

## 8) Connections (for the curious)

* **Abstract interpretation:** The classic $\alpha \dashv \gamma$ (abstraction/concretization) is the same pattern. Here, $c$ behaves like an abstraction (forgets details), $d$ like a canonical concretization.
* **Monads:** $N = d \circ c$ is an **idempotent monad** on $S$; its Eilenberg–Moore category is (equivalent to) the essential sources $E$.
* **Kernel pairs/coequalizers:** The relation $\sim$ is the **kernel pair** of $c$; the quotient $S/{\sim}$ coequalizes the projections and classifies binaries up to compilation.

---

## 9) How to use this page

* When you *design or evaluate* a decompiler, aim for an insertion $c \circ d = \mathrm{id}_B$. If that’s too strong, record precisely which preorder on $B$ makes it true up to $\le_B$.
* When you *define “sameness” of source*, use $N$: compare $N(s_1)$ and $N(s_2)$ instead of raw text.
* When you *explain “what the compiler preserves,”* point at $N$’s fixpoints and the quotient by $\sim$.

---

### Appendix: Minimal diagram

```
          η_s
       s ─────► d(c(s)) = N(s)
        │            │
        │            │ c
        ▼            ▼
       c(s) ─────► c(d(c(s))) = c(s)
                 ε_{c(s)} = id
```

* Left triangle: unit $\eta$ (normalize).
* Right triangle: counit $\varepsilon$ (binary is unchanged).

---

