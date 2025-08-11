# Adjoints: Hat sizes

**DRAFT** work in progress

> Q: Which president had the biggest hat? A: The one with the biggest head!

In this exercise we'll look at a very simple dataset and show how to look at it using relations and functions.

We'll see

- relations between the elements within the same set: is this element bigger than that other one?
- relations between elements of different sets: which head sizes are related to which hat sizes?
- most interestingly: is this head size bigger than that hat size, and viceversa?

We'll also see how using some domain knowledge can lead to a simpler formulation that yields better insights.

# Hat Size Chart

Consider a mapping of head circumference to hat sizes. (This Hat size chart is adapted from [Hanna Hats](https://hannahats.com/pages/size-charts), not to be confused with [Susquehanna Hats](https://www.youtube.com/watch?v=THZV5g1CNZM).)

|        |          |
|--------|----------|
| Head   |          |
| circum |          |
| \(cm\) | Hat size |
|        |          |
| 56     | S        |
| 57     | S        |
| 58     | M        |
| 59     | M        |
| 60     | L        |
| 61     | L        |
| 62     | XL       |
| 63     | XL       |
| 64     | XXL      |
| 65     | XXL      |

# Relations

We can treat this as a binary relation between two sets C and S:

    C = {56, 57, 58, 59, 60, 61, 62, 63, 64, 65}
    S = { S, M, L, XL, XXL}

Mathematically, binary relations are defined as a subset of the cartesian product of the two sets.

R ⊆ C x S

Is this relation a function?

If so, is it monotone? What concept must we introduce for this question to make sense?

## Converse relation

The table actually shows two relations, between those two different sets.

The most obvious one is the one above: R ⊆ C x S

The other is its converse: Rc ⊆ S x C.

Is the converse relation Rc a function?

If so, is it monotone? What concept must we introduce for this question to make sense?

## Preorders

Sets are just collections, and don't imply any ordering on their members.

If we want to discuss whether one element is bigger than the other, we have to impose an ordering. The simplest structure that does that is a preorder.

We need to be careful how we choose the ordering, though, because sometimes what is mathematically natural doesn't make sense in the real world.

For C (head size), the members are natural numbers, so we can use the "usual ordering".

For S (hat sizes), the members are strings, so the "usual ordering" is lexicographic:

(L, M, S, XL, XXL)

With that ordering, would the function f: C -\> S be monotone?

For hat sizes, we want to use the intuitively obvious ordering as shown in the table.

(S, M, L, XL, XXL)

## Comparing between sets

The preorder on set C tells us how to compare elements of C (circumference in cm).

But what if we want to compare elements of different sets?

What if we want to ask whether 60 cm is bigger than XL?

It's useful to be able to convert elements from one set into an equivalent element in the other set.

To do this, we use the notion of an adjoint. To understand this, we first need to precisely describe the mappings going each way.

# Function: Head size -\> hat size

The forward relation is actually a function

f: C -\> S

Is the function

- an injection?
- a monomorphism?
- surjective?
- an epimorphism?

# The other way: Hat size -\> head size

Consider the converse relation as a function

g: S -\> C

Is it injective? surjective?

Is it even a function?

# Inverses and Bijections

If g were in fact a function, then we might find that

f: C -\> S and g: S -\> C

when composed, yield a function g . f : C -\> C

If that composite turns out to be the identity, then f and g would be inverses.

Alas, we saw that g is not even a function. However, we can turn it into a function, just by throwing out pairs from the relation. There are several ways to do this, depending on which pairs you choose to discard.

# Adjoints: Almost-inverses

Recall that we're looking for a way to compare elements in one set to elements in another set. To do that, we seek ways to convert a head size to a hat size, and vice-versa, in a way that the comparison is consistent in some sense.

We already have a way to convert head size to hat size: the "forward" function, f.

The reverse mapping (the converse relation) isn't a function, but it can be "pruned" to yield a proper function. To do that, we have to discard some pairs from the relation.

Of the many ways to prune, which one should we choose?

- The function must be monotone.
- We'd like it to be "close to an inverse" of the forward function, f.
