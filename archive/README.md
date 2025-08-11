Here's some resources for an informal study group in Applied Category Theory. We'll emphasize applications to data modeling and processing, in particular data migrations (a kind of model transformation). (Most, but not all, participants are employees of ATA, which is primarily a "data science" company.)

Applied Category Theory is one of the underpinnings of the StateBox language, an open specification being developed by [statebox.org](https://statebox.org/) as part of their work commercializing verifiable systems.

Why study ACT: "The basic idea of category theory … is that if one pays careful attention to structures and coherence, the resulting systems will be extremely reliable and interoperable." If you need more motivation, see [Why Study ACT?](#why-study-act)

# Texts

The main text:

- [Seven Sketches in Compositionality: Invitation to Applied Category Theory](https://arxiv.org/pdf/1803.05316.pdf). This is the textbook used in [Applied Category Theory lectures](https://www.youtube.com/watch?v=UusLtx9fIjs&t=525s&index=2&list=PLhgq-BqyZ7i5lOqOqqRiS0U5SwTmPpHQ5) from MIT. NOTE: The numbering of exercises and examples is different in the PDF! We use the numbering in the printed textbook.

You should also get at least one of these two supplemental texts:

- [Conceptual Mathematics: A first introduction to categories](https://www.amazon.com/Conceptual-Mathematics-First-Introduction-Categories/dp/052171916X), Lawvere and Schanuel; this is the most approachable one I've found yet.

- [Category Theory in Context](http://www.math.jhu.edu/~eriehl/context.pdf), Emily Riehl; for the mathematically inclined.

If you're a programmer:

- [The Dao of Functional Programming](https://github.com/BartoszMilewski/Publications/blob/master/TheDaoOfFP/DaoFP.pdf)

# Syllabus

We'll generally follow the same outline used in John Baez's [online study group](https://forum.azimuthproject.org/discussion/1807/lecture-1-introduction) from 2018. That goes through the first four chapters of Seven Sketches, and has excellent [ACT Lectures](https://www.azimuthproject.org/azimuth/show/Applied+Category+Theory+Course#Course) by John Baez. We supplement that material with papers and exercises that apply what we've learned to the problems we encounter in data science.

We'll do all the exercises. Answers are in the book, and also in the [forums for John Baez's study group](https://forum.azimuthproject.org/categories/applied-category-theory-exercises).

Schedule: Because we all have day jobs, the pace is not very fast, and everyone is progressing at their own pace. There's no single "current lesson", and you might spend more than a week on one lesson.

In chat you'll find people at various places, so ask for help if you need it, or just ask if someone wants to work through an exercise or two with you. Offer help to others, too! I try to be present and active on slack.

# Reading and Reviewing a Paper

We ask everyone to choose a research paper that interests them, as a goal for their learning. The idea is that you probably won't understand much of it at first, but that's why we're here!

It could be about anything that involves the concepts from ACT. There's a list of papers in the [long list](archive/long-list.md) of references, including a section of suggested entry-level papers.

You should keep coming back to your paper each week to see if you understand any more of it.

After a while you might decide that the paper you chose is too advanced. Then just pick another one that isn't.

A good way to focus your study is by writing "real-time reading review" as you read a paper. This is a great way to discipline your thoughts and check your understanding. It also helps others who are reading the paper. Don't feel like you have to rush, but do try to do a bit each week. I expect to take months to get through the paper I've chosen, as I want to really understand the concepts and I need to fill in gaps in my math background as I go.

Where to publish your review? Anywhere you like, but it's most helpful if you make it freely accessible by anyone who has the URL. I might use Overleaf (online LaTeX editor) to keep a running review of my paper, and I'll update it as I progress.

Whereever you put your review, link it in slack so we can all learn from it.

## Where to Find Papers

On the Internet, of course! Just choose some topic you're interested in, append the words "category theory" and google that phrase.

See also [Statebox's Curated List of ACT Resources](https://t.co/oxZF8h0ApS) and the [long list](long-list.md) of resources.

Here's some entry-level suggestions:

- [String Diagrams for Assembly Planning](https://arxiv.org/pdf/1909.10475.pdf) uses Legos and Minecraft to introduce ideas about modeling composable structures

- [A Categorical Model for a Versioning File System](http://www.inf.ufrgs.br/~eslgastal/files/cmvfs.pdf)

- [When is One Thing Equal to Another?](http://www.math.harvard.edu/~mazur/preprints/when_is_one.pdf)

- [Systems, Generativity and Interactional Effects by Elie M. Adam](https://www.mit.edu/~eadam/eadam_PhDThesis.pdf) is the thesis mentioned in Chapter 1.

- [The Galois Connection between Syntax and Semantics](https://www.logicmatters.net/resources/pdfs/Galois.pdf) is a good companion to chapter 1 in Seven Sketches.

# Comms and office hours

We have a slack workspace where we work through problem sets and discuss papers.

Office hours: Wednesdays at 8am EDT is our nominal time to meet in Slack, so you're likely to find people present in realtime then. Otherwise feel free to post any time – you just might not get an immediate response.

Note that although many people in this group happen to be ATA employees, not everyone is. If you'd like to join, email [Mike Gallaher](mailto:mgallaher@ata-llc.com).

# Background in Math

It helps to have studied abstract algebra – groups, monoids, homomorphisms, and the like. Here's some resources to help you get up to speed.

[How to learn math and physics](http://math.ucr.edu/home/baez/books.html), John Baez's advice.

[A Programmer's Introduction to Mathematics](https://pimbook.org/), Jeremy Kun

[Awodey](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.211.4754&rep=rep1&type=pdf) is a gentle introduction to category theory with "remedial" algebra

# Exercises

These supplement the ones in the book and lectures. They tie the ACT material to our own everyday experience and relate them to the kinds of problems we routinely deal with.

"Exercises" mean those in Seven Sketches. "Puzzles" means the problems posed in Baez's materials. So what should we call these?

Here's the [discussions on exercises](https://forum.azimuthproject.org/categories/applied-category-theory-exercises) from John Baez's course.

## Baez puzzles 1

Puzzle 4. List some interesting and important examples of posets that haven't already been listed in other comments in this thread.

## [Blood Relations](pages/blood-relations.md)

## File System Model Checking

Install the [Alloy](http://alloytools.org) model-checking tool. Work through the [Alloy Tutorial](http://alloytools.org/tutorials/online/index.html) that models a simple filesystem.

Read [A Categorical Model for a Versioning File System](http://www.inf.ufrgs.br/~eslgastal/files/cmvfs.pdf). Extend the filesystem model to incorporate the versioning semantics described there.

## Migrations

[Formally Modeling Migrations](https://www.hillelwayne.com/post/formally-modeling-migrations/)

# Other resources

- [Category Theory for Programmers](https://github.com/hmemcpy/milewski-ctfp-pdf) Bartosz Milewski

- [Bartosz Milewski Category Theory](https://youtu.be/I8LbkfSSR58?t=2674) multi-part lecture series

- [UCLA Category Theory Study Group](https://cat.boffosocko.com/); [associated hangout video](https://www.youtube.com/watch?v=soGQ286EaCs)

- [What is Applied Category Theory?](https://arxiv.org/pdf/1809.05923.pdf) and [What is Category Theory Anyway?](https://www.math3ma.com/blog/what-is-category-theory-anyway)

# Why Study ACT?

From the description of [Mark Seemann's workshop](https://seemannworkshop.netcorebcn.group/) on Universal Design Patterns:

> Most programmers try to ‘invent’ abstractions from scratch. This is an elusive goal. It requires a level of foresight rarely available. What if, instead, you could use existing, universal abstractions? For decades, programmers have dreamt of being able to assemble software from building blocks, like Lego bricks. In order to do this, such building blocks must be composable, like Lego bricks. What makes an abstraction composable?
>
> It turns out that lambda calculus, abstract algebra, and category theory can teach us about composability and other fundamental abstractions of programming. Furthermore, it turns out that some of the most important design patterns in the Gang of Four book are special cases of such universal abstractions. Framing programming abstractions in mathematical terms has some advantages, one of which is that we get objective laws that we can use to test our assumptions. You can, for example, use such laws to determine whether an abstraction is composable – even in object-oriented programming!

[String Diagrams for Assembly Planning](https://arxiv.org/pdf/1909.10475.pdf) is a fun illustration of how this math can be applied, using Legos and Minecraft!
