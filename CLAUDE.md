# CLAUDE.md — Professional Web Builder repo

This repository **packages and distributes** the `professional-web-builder` Claude Code
skill. It is not a web app itself — it's the skill, its docs, and installers.

## What lives here

- `skills/professional-web-builder/` — the canonical source of the skill. **Edit the skill
  here.** The copy under `~/.claude/skills/` is just an install target.
- `install.ps1` / `install.sh` — copy the skill into a global or project skills directory.
- `README.md`, `roadmap.md`, `todo.md` — docs and planning.

## Working agreement

- **Single source of truth**: when changing skill behavior, edit
  `skills/professional-web-builder/SKILL.md` (or its `references/`), never a copy. After
  editing, re-run the installer to refresh local installs.
- **Keep SKILL.md lean** (< 500 lines). Push kit-specific or long-form detail into
  `references/*.md` and point to it from SKILL.md (progressive disclosure).
- **Bilingual convention**: skill body in English (model reliability); reasoning blocks and
  user-facing messages in French.
- **The skill must keep its discipline**: the value is the *Lovable Loop* (blueprint →
  confirm kit → scaffold → build atomically → motion & polish → verify). Don't water it down.
- **Accuracy over memory**: UI-kit libraries move fast (Tailwind v4 CSS-first config,
  NextUI→HeroUI rename, shadcn registries). When unsure about install steps, fetch current
  docs (Context7 MCP or the kit site) rather than guessing.

## When the skill itself is used to build an app

If a session actually builds a website using this skill, that app should live in its **own**
repo/directory, not inside this packaging repo.

## Roadmap

Planned extensions (Supabase backends, headless CMS, admin dashboard systems) are tracked in
`roadmap.md`; the actionable backlog is in `todo.md`. Prefer adding new capabilities as
additional `references/*.md` files plus a short pointer in SKILL.md.
