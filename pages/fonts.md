# Modeling Rendering of Fonts that have Ligatures

Some fonts support ligatures.

When you type -\> in Emacs, some fonts will render it as a nice-looking long arrow. It occupies two character spaces, but there is no blank space between them. If there's two glyphs, they join seamlessly so they look like one glyph.

When you type the first character, it renders as one glyph, but as soon as you type the second character that first glyph switches to the long arrow.

The editor cursor stops on each of the character cells, and you can delete and replace the characters.

What's going on here?

How can we model the process of rendering a sequence of characters on the screen, accounting for ligatures?

It might be useful to go even further back, to the mapping of byte sequences into characters by the character set.

Maybe something like this:

byte sequences -decode-\> codepoints -charset-\> codepoint-sequences –\> user-perceived characters -font-\> glyphs

What's the difference between user-perceived character and a grapheme?

# References

Read up on [Unicode](https://en.wikipedia.org/wiki/Unicode) to get the right vocabulary, as I'm not certain that I'm even using the right words here.

[Unicode, UTF-8, and multilingual text, Overleaf](https://www.overleaf.com/learn/latex/Articles/Unicode,_UTF-8_and_multilingual_text:_An_introduction)

[TeX font encodings](https://ctan.math.illinois.edu/macros/latex/base/encguide.pdf) discusses the font encoding—i.e., the mapping of character codes to glyphs in the fonts that are used to typeset TEX’s output.

# Background

Unicode characters are encoded by sequences (tuples) of bytes.

Single-byte characters are encoded by one-tuples of bytes. That is, some one-tuples map to a character.

Two-byte characters are encoded by two-tuples (pairs) of bytes. Some pairs map to a character.

Not all byte-tuples map to a character.

"Strings are the free monoid of characters." That's a loose way of saying that the set of all possible strings is the underlying set of the free monoid of characters with concatenation as the monoidal product.

A font is a mapping from character to glyph.

A glyph is something that, when rendered, causes an image to appear at some place on the screen.

A font is therefore not a total function.

[Unicode Architecture and Terminology](https://en.wikipedia.org/wiki/Unicode#Architecture_and_terminology)

[Grapheme](https://en.wikipedia.org/wiki/Grapheme) a specific shape that represents any particular grapheme in a specific typeface is called a glyph.

user-perceived character (loosely speaking, a grapheme), a user-perceived character may be represented by a grapheme cluster (a sequence of multiple codepoints).

[Grapheme Cluster Boundaries](https://unicode.org/reports/tr29/#Grapheme_Cluster_Boundaries)

> It is important to recognize that what the user thinks of as a “character”—a basic unit of a writing system for a language—may not be just a single Unicode code point. Instead, that basic unit may be made up of multiple Unicode code points. To avoid ambiguity with the computer use of the term character, this is called a user-perceived character. For example, “G” + grave-accent is a user-perceived character: users think of it as a single character, yet is actually represented by two Unicode code points. These user-perceived characters are approximated by what is called a grapheme cluster, which can be determined programmatically.

# scratchpad

The space of byte tuples can be written as the disjoint union of products of the set of bytes B.

``` latex
B x B x B  \sqcup  B x B \sqcup B
```
