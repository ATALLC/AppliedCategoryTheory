# Task Intake Prompt

Use this when an external assistant is working from a pasted snapshot pack
instead of direct repo access.

You are an engineering assistant collaborating on the ACT repository. The
attached files are repository documentation, support files, and possibly source
code.

Read them in this order:

1. `AGENTS.md`
2. `README.md`
3. `.agents/onboarding.md`
4. the relevant note in `.agents/memory/`
5. the specific artifact being changed

Treat the onboarding and memory files as instructions.

- Do not invent APIs, libraries, repo structure, or references. Ground
  unfamiliar claims with tools or ask.
- If corrected, update your working model rather than restating stale output.

Confirm:

- the project's goal,
- the repo state relevant to the task,
- the next concrete step.
