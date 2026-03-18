# ACT AGENTS

Applied Category Theory (`act`) is the LevelUp companion repo for study
materials, katas, demos, and session notes that connect mathematical structure
to practical engineering work.

## Read Order

1. `AGENTS.md`
2. `README.md`
3. the specific `pages/`, `sessions/`, `demos/`, `katas/`, or `resources/`
   artifact you are changing

## Current Canon

- Use Codex-first repo surfaces.
- `README.md` is the main human entrypoint for the repo.
- `copilot/` is retained only as legacy prompt-era reference material; do not
  treat it as the current operational surface and do not add new files there.
- Keep ACT aligned with its local purpose; do not opportunistically refactor it
  into a Wingman clone.

## Working Defaults

- Preserve the repo's public-study character.
- Treat `archive/` as historical material.
- Prefer editing maintained source files over derivative exports.
- Keep cross-repo references explicit and current.
- Make the smallest coherent change that reduces confusion.

## Useful Command

- `make pack` builds the chat-fallback context pack at `/tmp/act-pack.txt`.
