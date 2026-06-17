# TODO — Professional Web Builder

Actionable backlog. Roadmap-level vision lives in `roadmap.md`.

## Now / next
- [ ] Validate the skill on the 3 test prompts (landing → Magic UI, dashboard → shadcn,
      crypto/AI → Aceternity) and confirm the Lovable Loop is followed.
- [ ] Confirm UI-kit reference accuracy against current docs (Tailwind v4 config,
      HeroUI/NextUI install, shadcn registry URLs for Magic UI / Aceternity).
- [ ] Decide hosting for the repo (GitHub) and replace `<this-repo-url>` placeholders in
      `README.md`.
- [ ] Test both installers end-to-end (`install.ps1` on Windows, `install.sh` on macOS/Linux),
      including the project-scoped path.

## Skill quality
- [ ] Run the skill-creator description optimizer to tune trigger accuracy (after behavior
      stabilizes).
- [ ] Add a couple of worked examples (input prompt → blueprint → result) to README or a
      `references/examples.md`.
- [ ] Consider a `prefers-reduced-motion` checklist item surfaced more prominently in ÉTAPE 4.

## Roadmap modules (see roadmap.md)
- [ ] `references/supabase.md` — backend, auth (SSR + RLS), storage, realtime.
- [ ] `references/headless-cms.md` — Sanity / Payload / Contentful selection + recipes.
- [ ] `references/admin-dashboard.md` — app shell, data tables, CRUD, charts, authZ.
- [ ] `references/data-layer.md` — Supabase vs Drizzle vs Marketplace storage decision guide.

## Distribution (optional)
- [ ] Package as a Claude Code plugin marketplace entry so users can `/plugin install` it
      instead of cloning + running a script.
- [ ] Add a CHANGELOG.md once versioning starts.
