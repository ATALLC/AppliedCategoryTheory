## ACT Session Notes — Apr 10, 2026

### What we explored

This session served partly as ACT onboarding for a new participant, so we
started by using programming-language families as an accessible way into the
broader ACT perspective. The group contrasted imperative languages such as
Python, object-oriented languages such as Java and C#, and functional
languages such as Clojure, Haskell, JavaScript, and Nix. That comparison gave
us a practical way to talk about how different language styles make structure
more or less visible.

From there we moved into metaprogramming: programs that write other programs.
One of the key observations was that metaprogramming works best when programs
are easy to treat as data structures. Clojure was the most natural example
because code is already represented in a form that is convenient to inspect,
transform, and generate.

We also used a few ACT-flavored illustrations to make the abstractions feel
less mysterious. One example used a furniture-moving plan and a paper model as
an informal way to gesture at functorial thinking: preserve the relevant
structure while translating between representations. Another theme was the
"science of analogy": turning a hard problem into an easier one, solving the
easier problem, and then translating the answer back. The example offered was
multiplying large numbers expressed as Roman numerals by converting them into a
representation where multiplication is easier, doing the work there, and then
mapping the answer back.

The session closed by connecting these ideas to metaprompting. LLMs manipulate
text, and prompts are themselves text, so prompts can be used to generate or
improve other prompts. In that sense, prompt engineering becomes one more case
of metaprogramming: using a representation that can describe and transform its
own instructions.

### Tools, terms, or examples mentioned

* imperative programming
* object-oriented programming
* functional programming
* Python
* Java
* C#
* Clojure
* Haskell
* JavaScript
* Nix
* metaprogramming
* functor
* analogy as problem transformation
* Roman numerals
* metaprompting
* LLMs

### Core takeaways

* Programming-language families are a useful onboarding bridge into ACT because
  they make differences in structure and representation concrete.
* Metaprogramming becomes easier when code is already shaped like data.
* ACT can often be introduced as disciplined analogy: move to a representation
  where the problem is easier, solve it there, then transport the result back.
* Metaprompting is not a strange special case; it fits naturally into the same
  pattern as metaprogramming.

### Follow-up or questions to carry forward

* Which ACT examples work best for onboarding engineers who are strong in
  practical programming but new to category-theoretic language?
* It may be worth turning the "programming paradigms as ACT onboarding" thread
  into a short reusable session outline or page.
