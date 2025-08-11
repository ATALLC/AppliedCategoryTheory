# Indicator functions and relations

[At the Interface of Algebra and Statistics](https://arxiv.org/pdf/2004.05631.pdf) is Tae-Danae Bradley's thesis on recognizing concepts in NLP. This is some of the best mathematical exposition you'll find. Best of all, she produced a [video](https://www.youtube.com/watch?v=wiadG3ywJIs&feature=youtu.be) that puts it in context. By the way, her website mathema has some of the most accessible explanations of math topics around.

Functions and relations figure heavily in that thesis, so I'd like to recall some facts about them and introduce a way to connect them: indicator functions.

The neatest definition of category I've seen is from [Categories for Programmers](http://brendanfong.com/programmingcats_files/cats4progs-DRAFT.pdf) section 1.3.2:

> A category is an organized network of relationships.

One kind of relationship that we encounter in programming is "function". Category theory gives us an algebra of functions, where composition is the most basic algebraic operation. As useful as they are, functions are only a part of the picture.

Functions are just a special case of relations. Functions can be one-to-one, or many-to-one, and must be defined for every element of the input. Relations can also be many-to-many, and need not have a value for every input element. Relations, in a sense, are generalized functions.

A relation between set A and B is defined as a subset of the cross product AxB. It's a set of ordered pairs. It may be empty (nothing in A is related to anything in B). It may be the entire set of pairs in AxB (everything in A is related to everything in B). Most often though, it's a proper subset.

We already know how to reason about how functions behave. How can we apply our arsenal of facts about functions to the study of relations?

In Seven Sketches, we've mostly studied relations from A to itself, particularly equivalence relations. Chapter 1 shows how an equivalence relation in a set A induces a partition on A. We've already seen how surjective functions from a set B induce a partition on B – an equivalence relation.

A function, by definition, can only return a single value chosen from its codomain set. But sometimes you want a function to return many values at once. (Consider a function that returns the preimage under f of a given codomain value.) One way to handle this is to define the function so it returns a set of those values. That's not the same codomain set we'd hoped for – it's a member of its power set. We could also just treat the "function" as a relation.

So we've seen a couple of ways that functions give rise to relations.

How can we go the other way – given a relation, can we study it in terms of functions, which we already know how to reason about?

Because the relation is a subset of AxB, we can just look for a way to specify subsets. In other words, we need a way to pick out some pairs, and omit the rest, to form a new set, using a function

An [indicator function](https://en.wikipedia.org/wiki/Indicator_function) is one way to do that. It's just a boolean-valued function from the set A that we want to specify a subset of. For each value in A, it returns 1 if the value should be included in the subset, and 0 if it should be omitted.

Each subset of A is specified by its own indicator function. To construct the powerset of A, we need an indicator function for each of the subsets. How many such functions are there, and how many subsets?

In Clojure, this is the predicate we'd give to `filter`.

Back to Bradley's thesis. See top of page 12 for a good exercise.

## Questions

What is the type of an indicator function?

what is the justification for using the exponential notation 2<sup>A</sup> to represent both the powerset of A, as well as the set of functions from A to Bool?

Puzzle for chapter 1. Burlington VT is the least populous city to be the most populous in a state. Express this fact in terms of meets and joins (sup and inf).

Question for chapter 2. Is linearity a kind of functoriality?

[Categories for Programmers](http://brendanfong.com/programmingcats_files/cats4progs-DRAFT.pdf) Exercises 1.34, 1.35 to reinforce the definition of category.
