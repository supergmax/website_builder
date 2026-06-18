# Professional Full-Stack Web Builder — Claude Code Skill

A [Claude Code](https://claude.com/claude-code) skill that turns Claude into a disciplined,
production-grade web engineer. It enforces a standardized modern stack, a strict
**architecture-before-code** protocol (the *Lovable Loop*), and a curated choice of 4
specialized UI kits — so every site, app, or landing page ships looking like a senior
product team built it, not like a generic AI template.

> 🇫🇷 Les instructions du skill sont bilingues : corps en anglais (fiabilité du modèle),
> blocs de réflexion et messages utilisateur en français.

---

## ✨ What it does

- **Mandatory stack** — Next.js (App Router) · Tailwind CSS v4 · Framer Motion.
- **4 UI kits, matched to the product** — shadcn/ui · Magic UI · Aceternity UI · NextUI/HeroUI.
  Claude *recommends* the best fit with justification, then asks you to confirm.
- **The Lovable Loop** — a 5-step protocol applied on every build:
  1. **Blueprint** — systemic architecture pass *before* touching any file.
  2. **Scaffolding** — clean, non-interactive setup + predictable folder structure.
  3. **Build** — atomic, component-by-component, Server Components by default.
  4. **Motion & Polish** — Framer Motion, responsive, dark mode, a11y, distinctive design.
  5. **Verification** — real `build` + `dev` + visual check. No "done" without evidence.
- **Anti-generic design guardrails** — a reference file dedicated to escaping the
  "AI-generated default template" look.

---

## 📦 Repository layout

```
.
├── README.md
├── CLAUDE.md                       # project memory / working agreement for Claude Code
├── roadmap.md                      # planned extensions (Supabase, headless CMS, admin…)
├── todo.md                         # actionable backlog
├── install.ps1                     # Windows installer
├── install.sh                      # macOS / Linux installer
└── skills/
    └── professional-web-builder/
        ├── SKILL.md                # the skill itself
        └── references/
            ├── ui-kits.md          # per-kit install & usage (read on demand)
            └── design-principles.md
```

---

## 🚀 Installation

**One command** — installs the skill globally for Claude Code (and Cursor, Codex,
OpenCode and more) via the [skills.sh](https://www.skills.sh/) ecosystem:

```bash
npx skills add supergmax/website_builder --skill professional-web-builder -g
```

Restart Claude Code (or open a new session) and the skill is live. Drop `-g` to install
into the current project only.

<details>
<summary>Prefer a manual install?</summary>

Clone and run the installer:

```bash
git clone https://github.com/supergmax/website_builder.git
cd website_builder
./install.sh            # macOS / Linux   ·   ./install.ps1 on Windows
```

…or simply copy the folder into your skills directory:

```bash
cp -r skills/professional-web-builder ~/.claude/skills/
```

</details>

---

## ▶️ Usage

Just describe what you want to build. The skill is "pushy" and triggers on any web-build
intent — you don't need to name the framework or a kit:

```
Construis-moi une landing page pour une app SaaS de notes de frais, avec un hero qui claque.
Build an admin dashboard to track users and their subscriptions.
Page d'accueil pour une plateforme de trading crypto IA, ambiance futuriste.
```

Claude will: print an **architecture blueprint** → **recommend a UI kit** and ask you to
confirm → scaffold → build atomically → animate & polish → verify the result actually runs.

You can also force it explicitly: *"use the professional-web-builder skill to…"*.

---

## 🔧 Requirements

- Claude Code (CLI, desktop, web, or IDE extension).
- Node.js (for the apps the skill scaffolds) — the skill itself has no runtime deps.

---

## 🗺️ Roadmap & contributing

See [`roadmap.md`](./roadmap.md) for planned extensions (Supabase backends, headless CMS,
admin dashboard systems) and [`todo.md`](./todo.md) for the current backlog. PRs and new
UI-kit reference files welcome.

## 📄 License

MIT — see [`LICENSE`](./LICENSE).
