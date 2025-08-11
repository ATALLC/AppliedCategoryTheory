# Resource Theories

**DRAFT** work in progress

[A mathematical theory of resources](https://arxiv.org/pdf/1409.5531.pdf)

Resource Theories in Animal Crossing.

Resource theories can describe data transformations, among many other useful processes, but they can get complicated in real-world applications. To understand the basics first, we'll apply it to the simple, artificial world of a video game. Many of the insights we gain here apply to situations we encounter in IT.

In the game, you seek to make money (measured in "bels"). One way to do that is to turn "free" items (tree branches, stones, weeds) into more valuable items (umbrellas, axes, nets) by a process called crafting.

We can apply a resource theory to answer questions such as:

- What's the smallest set of materials that will produce a given item?
- How to get the most bels from a given set of materials?

For more practical application, think "data" as material and "information" as item. How can I get the most information from a given set of data?

## Analysis

You can get some items for free just by picking them up from the ground – the cost is time and travel.

Some items can be extracted from the environment using a tool (like a shovel or an axe). Crafting requires that you be near a workbench, which is available for free.

> For a given set of possible experimental interventions — for instance, state preparations, transformations and measurements — the set can be divided into those interventions that are considered to be freely implementable and those that are considered to be costly. It is presumed that an agent can make use of anything in the free set in unlimited number and in any combination, while the elements of the expensive set are the resources. The theory seeks to describe the structure that is induced on the resources, given access to the free set.

    State preparation: mining, trading
    Transformation: Crafting
    Measurement: selling, trading

The first problem is to compute a chain of transformations whose end products include an item of a given type. In the language of SMCs, we're looking for a morphism c: P -\> P<sub>n</sub> into the target type. The set of all items is partitioned by the type relation.

The "most bels" problem is an optimization problem over the set of all morphisms into the target item type. This could be modeled as a game where the moves are morphisms and the payoffs are item prices.

Is it useful to treat materials and products as different categories? Could they form subcategories in a bigger category?

You obtain primitive materials from the environment by a process akin to mining. This can be treated as deriving them from the void resource, aka the monoidal unit.

Crafting requires a workbench, which is a catalyst – it must be present as in input, but it is not consumed or transformed so it is also an output. Crafting transformations are identified with Recipes.

Crafting as SMC

    M materials
    P products
    c craft
    I void resource

    c: m -> p

## Misc

Items lying on the ground are free.

You can extract some items from the environment by mining, which requires a tool. If you hit a tree with a stone axe, you get chunks of wood. If you hit a rock with an axe (or shovel) you get stones, iron nuggets.

You can dig up chunks of iron, stones from the ground, using a shovel.

We treat the mining tools as catalysts.

To simplify our analysis, we are ignoring:

- You can get branches without any tool, by shaking a tree to knock the branch to the ground, and then picking it up off the ground. We treat this as equivalent to just picking it up off the ground.
- Stones are free (you can find them on the ground) but you can also knock them out of rocks.
