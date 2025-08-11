# Does program compilation have adjoints?

This page is an attempt to state things familiar to programmers using mathematical language.

Compiling source code to executable is a model transformation. In some cases, you can derive source code from an executable, using a decompiler.

The resulting decompiled source code may not have exactly the same structure as the original, and won't have syntactic niceties like comments.

But if you compile the decompiled program, you'll get exactly the same executable.

In other words, if you form the composite `(decompile; compile)` you'll get a function that will turn any executable into itself. It's just the identity function. We can use this as the definition of a correct decompiler.

If you form the other composite `(compile; decompile)` you'll get a function that will turn any source file into its "essential" source file.

Many source files will compile into the same executable, and hence decompile back into the same essential source file. Those source files differ only in comments, or trivial structural differences that don't affect code generation.

compile thus induces a partition on the set of all source files, where the equivalence classes consist of all source files that compile to the same essential source.

The decompile function gives us a way to pick out a representative (the essential source) from the equivalence class, once we've picked out the binary.

So the `(compile; decompile)` composite is a way to get from any source file to the representative essential source file.

You can think of the essential source as a limit in its class, in that there is a mapping to it from many other source files.

The essential source is a natural representative of the equivalence class. We say "natural" because there's no other obviously unique source file in a class. Of all the other equivalent source files, it's special (unique) because all those others can be transformed into it by the `(compile;decompile)` composite.

So decompilation is an adjoint of compilation – not exactly an inverse, but it tells you something about the essence of the program.

Whenever you have to "pick out a representative" from an equivalence class, you're probably looking at a choice problem, also called a lifting problem. Here's a picture (pardon the bad ASCII art):

         S
        ^
       /  \
    d /    \ c
     /      v
    B------>B
       idB

    d is decompile.
    c is compile.
    S is the set of all source files. 
    B is the set of all binary files.

Constructing a decompiler is equivalent to a solving a lifting problem from binary to source code – what can I first do, that compile will then undo? Decompile is a "left inverse" of compile.

# Questions

- Is decompile the left adjoint of compile?
- Does `(decompile;compile)` correspond to the unit of the adjunction?
- Does `(compile;decompile)` correspond to the counit?
- Is the set of essential source files isomorphic to the parts of the partition induced by compile?
