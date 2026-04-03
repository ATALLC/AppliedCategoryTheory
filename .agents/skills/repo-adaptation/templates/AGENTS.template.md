# AGENTS.md

> This file is the primary instruction surface for AI coding agents working in this repository.
> It is read by tools that support the `AGENTS.md` convention (Codex, OpenCode, and others).

## Project overview

<!-- Briefly describe what this project is, its architecture, and key technologies. -->

**Project:** [project name]
**Language(s):** [e.g., TypeScript, Python]
**Framework(s):** [e.g., Next.js, FastAPI]
**Architecture:** [e.g., monorepo, microservices, monolith]

## Quick start

```bash
# Install dependencies
# [e.g., npm install, pip install -r requirements.txt]

# Run tests
# [e.g., npm test, pytest]

# Lint
# [e.g., npm run lint, ruff check .]

# Build
# [e.g., npm run build, make build]

# Start dev server
# [e.g., npm run dev, python manage.py runserver]
```

## Code conventions

<!-- List the code style rules, naming conventions, and patterns the project follows. -->

- [e.g., Use camelCase for variables, PascalCase for components]
- [e.g., Prefer functional components with hooks over class components]
- [e.g., All public functions must have docstrings]

## Constraints

<!-- Things agents should avoid or be careful about. -->

- [e.g., Do not modify files in vendor/ or generated/]
- [e.g., All API changes require migration scripts]
- [e.g., Never commit secrets or credentials]

## Skills

Reusable workflows are in `.agents/skills/`. Consult them for complex tasks:

<!-- List skills as they are created -->
- `.agents/skills/[skill-name]/` — [one-line description]

## Compatibility

<!-- If legacy agent-facing files remain, note them here. -->
<!-- e.g., `.cursorrules` is maintained for Cursor users and mirrors the code conventions above. -->
