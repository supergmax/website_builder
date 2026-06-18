<div align="center">

# 🏗️ Professional Web Builder

### A Claude Code skill that ships **production-grade, distinctive** web interfaces — and refuses to output generic AI slop.

[![Install with skills.sh](https://img.shields.io/badge/skills.sh-install-000000?style=for-the-badge)](https://www.skills.sh/)
[![Claude Code](https://img.shields.io/badge/Claude_Code-skill-DA7756?style=for-the-badge)](https://claude.com/claude-code)
[![License: MIT](https://img.shields.io/badge/license-MIT-22c55e?style=for-the-badge)](./LICENSE)

```bash
npx skills add supergmax/website_builder --skill professional-web-builder -g
```

*One command. Then just describe what you want to build.*

</div>

---

## Why this skill?

Ask an AI to "build a landing page" and you usually get the same thing: a centered hero, an
indigo→purple gradient, three identical feature cards, Inter everywhere. **Competent, and
completely forgettable.**

`professional-web-builder` turns Claude into a disciplined senior product engineer. It locks
in a modern stack, thinks about **architecture before touching code**, picks the right UI kit
for *your* product, and finishes with a dedicated **taste pass** that hunts down and removes
the tells of machine-generated design.

The result looks like a senior team shipped it — not like a template.

> 🇫🇷 **Bilingue.** Le corps du skill est en anglais (fiabilité du modèle) ; les blocs de
> réflexion et les messages à l'utilisateur sont en français.

---

## ✨ What you get

| | |
|---|---|
| 🧱 **A locked, modern stack** | Next.js (App Router) · Tailwind CSS v4 · Framer Motion — current best practices, zero bikeshedding. |
| 🎨 **The right UI kit, matched to the product** | shadcn/ui · Magic UI · Aceternity UI · NextUI/HeroUI — recommended *with reasoning*, confirmed by you. |
| 🧭 **Architecture before code** | A mandatory blueprint pass: structure, data flow, Server vs Client, motion plan — *before* a single file is written. |
| 💎 **A final taste pass** | Anti-slop detectors, motion craft, and a pre-flight checklist that must honestly pass before "done". |
| 🔁 **A repeatable 6-step loop** | The same discipline every time, scaled to the task — from a one-section landing to a full SaaS. |

---

## 🔁 The Lovable Loop

Every build follows six steps, in order:

```
1 · Blueprint    →  systemic architecture pass, before any file
2 · Scaffold     →  clean non-interactive setup + predictable structure
3 · Build        →  atomic, component-by-component, Server Components by default
4 · Motion       →  Framer Motion, responsive, dark mode, a11y
5 · Verify       →  real build + dev + visual check — no "done" without evidence
6 · Taste pass   →  anti-slop audit + motion craft + pre-flight checklist
```

That last step is the difference. It's where the design becomes *intentional*.

---

## 🎨 The four UI kits

The skill never silently defaults — it recommends the best fit for your brief and asks you to confirm.

| Kit | Best for | Aesthetic |
|-----|----------|-----------|
| **shadcn/ui** | SaaS, dashboards, design systems you'll heavily theme | Minimal, neutral foundation |
| **Magic UI** | High-impact landing & marketing pages, "wow" + conversion | Modern, dynamic, motion-rich |
| **Aceternity UI** | Web3 / AI / trading / futuristic products | Bold, cyberpunk, parallax & glow |
| **NextUI / HeroUI** | Fast prototyping, cohesive out-of-the-box theming | Polished, rounded, great dark mode |

---

## 💎 The taste pass — built on the best open design skills

Step 6 distills the spirit of three outstanding community skills into one final gate:

- **[Taste](https://www.tasteskill.dev/)** — the anti-slop framework: read the brief, pick the
  right design system, validate before shipping.
- **[Impeccable](https://github.com/pbakaus/impeccable)** by Paul Bakaus — a vocabulary of
  refinement moves + concrete anti-pattern detectors.
- **[Emil Kowalski's skill](https://github.com/emilkowalski/skill)** — animation & design-engineering
  craft (timing, easing, purposeful motion).

It scans for the usual machine-generated tells — grey text on coloured backgrounds, pure
black, default indigo gradients, nested cards, Inter-as-display, bounce easing — and refines
type, colour, layout, motion, and empty/error states until the result is *impeccable*.
Go star the originals — they're excellent.

---

## 🚀 Installation

**One command** — installs globally for Claude Code (and Cursor, Codex, OpenCode and more)
via the [skills.sh](https://www.skills.sh/) ecosystem:

```bash
npx skills add supergmax/website_builder --skill professional-web-builder -g
```

Restart Claude Code (or open a new session) and the skill is live. Drop `-g` to install into
the current project only.

<details>
<summary>Prefer a manual install?</summary>

```bash
git clone https://github.com/supergmax/website_builder.git
cd website_builder
./install.sh            # macOS / Linux   ·   ./install.ps1 on Windows
```

…or copy the folder straight into your skills directory:

```bash
cp -r skills/professional-web-builder ~/.claude/skills/
```

</details>

---

## ▶️ Usage

Just describe what you want — the skill triggers on any web-build intent, even without naming
the framework or a kit:

```
Construis-moi une landing page pour une app SaaS de notes de frais, avec un hero qui claque.
Build an admin dashboard to track users and their subscriptions.
Page d'accueil pour une plateforme de trading crypto IA, ambiance futuriste.
```

Claude will print an **architecture blueprint**, **recommend a UI kit** and ask you to
confirm, scaffold, build atomically, animate & polish, verify it actually runs, and finish
with the **taste pass**. You can also force it: *"use the professional-web-builder skill to…"*.

---

## 📦 What's inside

```
.
├── skills/professional-web-builder/
│   ├── SKILL.md                       # the skill: stack, kits, the 6-step loop
│   └── references/
│       ├── ui-kits.md                 # per-kit install & usage (read on demand)
│       ├── design-principles.md       # escaping the generic AI look
│       └── design-excellence.md       # the final taste pass — detectors + checklist
├── install.sh · install.ps1           # manual installers
├── roadmap.md · todo.md               # where this is headed
└── LICENSE
```

**Requirements:** Claude Code (CLI, desktop, web, or IDE). Node.js is only needed for the apps
the skill scaffolds — the skill itself has no runtime dependencies.

---

## 🗺️ Roadmap & contributing

Planned extensions (Supabase backends, headless CMS, admin dashboard systems) live in
[`roadmap.md`](./roadmap.md); the backlog is in [`todo.md`](./todo.md). PRs and new UI-kit
reference files are welcome.

## 📄 License

[MIT](./LICENSE) — use it, fork it, ship great things.

<div align="center">

---

*Built with [Claude Code](https://claude.com/claude-code). Distributed via [skills.sh](https://www.skills.sh/).*

</div>
