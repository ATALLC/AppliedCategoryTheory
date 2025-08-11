# Compositional view of anagram recognition

We’ll start with the function that makes anagrams trivial:

$$
\varphi : A^\* \longrightarrow \mathbb{N}^{(A)}
$$

* $A^\*$: all finite strings (lists) over an alphabet $A$ with concatenation.
* $\mathbb{N}^{(A)}$: finitely supported maps $A \to \mathbb{N}$ (i.e., **multisets** / **Parikh vectors**) with pointwise addition.

For a word $w$, $\varphi(w)$ counts how many times each symbol appears.
**Two words are anagrams iff $\varphi(w_1) = \varphi(w_2)$.**

The rest of this page unpacks that statement from three angles—sets/monoids, groups, and categories—and ends with practical code, test laws, and extensions.

---

## 1) Sets & monoids: forget order, keep amounts

* $(A^\*, \cdot, \varepsilon)$ is a **free monoid** on $A$: concatenate strings; $\varepsilon$ is empty.
* $(\mathbb{N}^{(A)}, +, 0)$ is a **free commutative monoid** on $A$: add symbol counts componentwise.

$\varphi$ is a **monoid homomorphism**:

* $\varphi(\varepsilon) = 0$
* $\varphi(u \cdot v) = \varphi(u) + \varphi(v)$

Intuition: concatenate, then count = count, then add.

Anagram equivalence is exactly the **kernel pair** of $\varphi$:

$$
u \sim v \quad\text{iff}\quad \varphi(u) = \varphi(v).
$$

This “forgets” order while **preserving composition** (concatenation turns into addition). That’s the compositional core.

---

## 2) Groups: permutations act; orbits are anagram classes

Fix length $n$. The symmetric group $S_n$ acts on $A^n$ by permuting indices:

$$
(\sigma \cdot w)_i := w_{\sigma^{-1}(i)}.
$$

Two words of length $n$ are anagrams iff they’re in the **same orbit** under this action.

If $\varphi(w)$ has counts $\{m_a\}_{a\in A}$ (so $\sum m_a = n$), then the stabilizer of $w$ is

$$
\mathrm{Stab}(w) \cong \prod_{a\in A} S_{m_a},
$$

and the number of distinct anagrams of $w$ is

$$
\frac{n!}{\prod_{a} m_a!}.
$$

That’s the familiar “multiset permutations” formula—now explained by orbit–stabilizer.

---

## 3) Category theory: anagrams as abelianization

View a monoid as a **single-object category**; a homomorphism is then a **functor**.
$\varphi$ is the universal map from the free monoid $A^\*$ to the free **commutative** monoid $\mathbb{N}^{(A)}$. In other words:

* $\varphi$ is the **abelianization** (commutativization) of $A^\*$.
* It’s a **strict monoidal functor** between $(A^\*, \cdot, \varepsilon)$ and $(\mathbb{N}^{(A)}, +, 0)$.
* The anagram relation $u \sim v$ is the **coequalizer** (quotient) that identifies words differing by permutations.

This perspective makes “sort, then compare” feel ad hoc, while “apply the universal homomorphism, then compare” is *canonical*.

---

## 4) Programmers’ toolbox

### 4.1 Canonical pipelines

Define your anagram check as **equality after a homomorphism**:

$$
\text{key} := N \circ \varphi
$$

where $N$ is any normalization (lowercasing, Unicode normalization, filtering). Then:

$$
\text{anagram?}(x,y) \iff \text{key}(x) = \text{key}(y).
$$

Common choices for `key`:

* **Parikh vector** (dictionary/array of counts) — $O(n)$, streaming.
* **Sorted string** — $O(n \log n)$, simple baseline.
* **Hashed Parikh** — e.g., stable hash of the count map.

### 4.2 Code sketches

**Python (dict counts)**

```python
from collections import Counter
import unicodedata
def norm(s):
    # adjust to your policy: casefold, NFKD, filter letters, etc.
    s = unicodedata.normalize('NFKD', s).casefold()
    return ''.join(ch for ch in s if ch.isalpha())

def key_parikh(s):
    return Counter(norm(s))

def are_anagrams(a, b):
    return key_parikh(a) == key_parikh(b)
```

**JavaScript (Map counts)**

```js
function norm(s) {
  return s.normalize('NFKD').toLowerCase().replace(/[^a-z]/g, '');
}
function keyParikh(s) {
  const m = new Map();
  for (const ch of norm(s)) m.set(ch, (m.get(ch) || 0) + 1);
  return m;
}
function eqMap(a, b) {
  if (a.size !== b.size) return false;
  for (const [k, v] of a) if (b.get(k) !== v) return false;
  return true;
}
export const areAnagrams = (x, y) => eqMap(keyParikh(x), keyParikh(y));
```

**Haskell (multiset via Map)**

```haskell
import qualified Data.Map.Strict as M
import Data.Char (isAlpha, toLower)
import Data.List (foldl')

norm :: String -> String
norm = filter isAlpha . map toLower  -- extend with unicode as needed

parikh :: String -> M.Map Char Int
parikh = foldl' (\m c -> M.insertWith (+) c 1 m) M.empty . norm

areAnagrams :: String -> String -> Bool
areAnagrams a b = parikh a == parikh b
```

### 4.3 Property tests (the algebra talking)

Let `⊕` be string concatenation and `+` be multiset addition.

* **Homomorphism law:** `parikh(x ⊕ y) == parikh(x) + parikh(y)`
* **Identity:** `parikh("") == 0`
* **Permutation invariance:** for any permutation `σ` on indices of `x`,
  `parikh(permute σ x) == parikh(x)`
* **Soundness/completeness:** `areAnagrams(x,y) ↔ parikh(x) == parikh(y)`

These are excellent QuickCheck/fast-check properties.

---

## 5) Practical considerations

* **Alphabet policy.** Decide if digits, hyphens, accents, or emoji are in $A$. Normalize explicitly (e.g., Unicode NFKD/NFC, casefolding).
* **Locale.** Grapheme clusters vs code points matters for some languages; consider a proper segmenter if needed.
* **Streaming.** Count-based keys are naturally streaming: update counts incrementally; compare by subtracting.
* **Security.** Untrusted input? Cap word length, be mindful of hash DOS if you hash maps, and watch memory on massive alphabets.

---

## 6) Worked example

Word: `BANANA`
$\varphi(\text{"BANANA"}) = \{ A \mapsto 3,\ N \mapsto 2,\ B \mapsto 1 \}$

Any string with the same counts (e.g., `ANANAB`, `NAABAN`) is an anagram.
Stabilizer size: $3!\,2!\,1! = 12$.
Total distinct anagrams: $6! / 12 = 60$.

---

## 7) Beyond exact anagrams

* **k-anagrams / near-anagrams:** allow small $L_1$ distance between Parikh vectors; this is a metric on $\mathbb{N}^{(A)}$.
* **Pattern anagrams:** match up to a relabeling of symbols; quotient by a symbol bijection.
* **Labeled anagrams:** keep some positions fixed; restrict the action to a subgroup of $S_n$.

Each is a controlled modification of the same compositional shape: apply a structure-preserving map and compare in a simpler space.

---

## 8) Cheat sheet

* **Core idea:** anagrams = equality of **Parikh vectors**.
* **Structure:** $A^\*$ (concat) $\xrightarrow{\ \varphi\ }$ $\mathbb{N}^{(A)}$ (add).
* **Group view:** anagram classes are $S_n$-**orbits**; count via orbit–stabilizer.
* **Category view:** $\varphi$ is **abelianization**; anagram ≡ kernel pair of $\varphi$.
* **Engineering:** define a `key := normalize ∘ parikh`; compare keys.

---

### Exercises

1. Prove $\varphi$ is a monoid homomorphism and that $u \sim v \iff \varphi(u)=\varphi(v)$.
2. For `MISSISSIPPI`, compute the number of distinct anagrams.
3. Implement a streaming anagram check that reads the second string once and early-outs when counts go negative.
4. Generalize to **near-anagrams** with a threshold $k$ using the $L_1$ distance on $\mathbb{N}^{(A)}$.
5. Show that sorting defines another monoid homomorphism $A^\* \to \mathrm{List}(A)$ **only after** quotienting by permutations; explain why Parikh is the canonical commutative target.
