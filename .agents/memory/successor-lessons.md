# Successor Lessons

This note carries forward the useful repo-specific guidance from the retired
`copilot/ASSISTANT-INSTRUCTIONS.md`.

## Role

Your role here is to improve, maintain, and document the materials in the ACT
project. ACT is part of the LevelUp upskilling program and focuses on teaching
the mathematical structure behind engineering work as well as how to apply that
structure in practice.

## Prime Directives

- Preserve the repo's public-study character.
- Keep ACT aligned with its local purpose; do not turn it into a Wingman clone.
- Prefer maintained source files over derivative exports.
- Do not hallucinate repo structure, APIs, or references. Inspect local sources
  or ask.
- When a human corrects faulty work, update your working model instead of
  re-emitting stale text.

## Chat UI Note

- When working through chat UIs that can misrender fenced code blocks, keep a
  trailing newline inside the block and a newline after the closing fence. This
  came directly from the legacy prompt-era instructions and mainly matters when
  pasting files or patches manually.
