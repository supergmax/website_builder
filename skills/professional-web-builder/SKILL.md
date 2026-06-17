---
name: professional-web-builder
description: >-
  Build production-grade web apps, landing pages, dashboards, and SaaS UIs on a
  standardized modern stack (Next.js App Router + Tailwind CSS v4 + Framer Motion)
  with a strict architecture protocol and a curated choice of 4 specialized UI kits
  (shadcn/ui, Magic UI, Aceternity UI, NextUI). Use this skill WHENEVER the user wants
  to create, build, redesign, or scaffold any website, web app, landing page, marketing
  page, dashboard, SaaS interface, Web3/AI/trading UI, frontend component, or "un site" /
  "une app" / "une landing" — even if they don't name the framework or a UI kit, and even
  for quick prototypes. If the user mentions Next.js, Tailwind, Framer Motion, shadcn,
  Magic UI, Aceternity, NextUI, "wow effect", bento grid, hero section, or "niveau
  production", this skill applies. Do NOT skip it for "just a small page" — the protocol
  scales down cleanly.
---

# Professional Full-Stack Web Builder

Build web interfaces that look and feel like a senior product team shipped them: a
standardized stack, a disciplined architecture pass *before* code, and a curated UI-kit
choice matched to the product. The goal is production quality and a distinctive look —
**never** the generic "AI-generated default template" aesthetic.

> Bilingue : les instructions sont en anglais pour la fiabilité du modèle, mais les blocs
> de réflexion et les messages adressés à l'utilisateur restent en français.

---

## 1. Mandatory pre-build stack — STACK OBLIGATOIRE

Every project or feature is built **exclusively** on this base. Do not substitute pieces
unless the user explicitly overrides them.

| Layer | Choice | Notes |
|-------|--------|-------|
| Framework | **Next.js (App Router)** | Server Components by default; Server Actions for mutations; Route Handlers (`app/api/.../route.ts`) only when a real HTTP endpoint is needed. |
| Styling | **Tailwind CSS v4+** | CSS-first config: `@import "tailwindcss";` + `@theme { … }` in `globals.css`. No `tailwind.config.js` unless a plugin requires it. |
| Animations | **Framer Motion** | Fluid entrances/exits, micro-interactions, page transitions. Always `"use client"` for animated components. |

Default to the latest Next.js. Scaffold non-interactively (`--yes` / explicit flags) — see
ÉTAPE 2.

---

## 2. UI Kit matrix — MATRICE DES UI KITS

Four kits. **Recommend the best-fit kit with a one-line justification, then ask the user
to confirm or switch** before scaffolding. Never silently pick one.

| Kit | Best for | Default aesthetic |
|-----|----------|-------------------|
| **A. shadcn/ui** | Complex SaaS, dashboards, full source control, design systems you'll heavily customize. | Minimal, clean, neutral — a foundation you theme. |
| **B. Magic UI** | High-impact landing & marketing pages: bento grids, animated text, interactive backgrounds, conversion-focused "wow". | Modern, dynamic, motion-rich. |
| **C. Aceternity UI** | Web3 / AI / trading / next-gen products wanting a bold futuristic look. | Cyberpunk: parallax, moving glow cards, neon grids, heavy Framer Motion. |
| **D. NextUI** | Rapid prototyping (high velocity), cohesive out-of-the-box design system, no per-component file copying, strong native theming. | Polished, rounded, excellent light/dark/custom themes. |

**Recommendation heuristic** (state your reasoning, don't just emit a name):
- Marketing / landing / "wow" / conversion → **Magic UI**
- Web3 / AI / trading / futuristic / "cyberpunk" → **Aceternity UI**
- Dashboard / SaaS / admin / heavy customization → **shadcn/ui**
- Fast prototype / MVP / "just make it look good quickly" / theming-heavy → **NextUI**

When mixing is justified (e.g. shadcn foundation + a Magic UI hero), say so and confirm.

**Before installing or wiring a kit, read `references/ui-kits.md`** for that kit's exact
install commands, Tailwind v4 compatibility notes, and usage patterns. Only read the
section for the chosen kit.

---

## 3. Orchestration protocol — LE "LOVABLE LOOP"

Five steps, in order. Steps scale to the task: a one-section landing still gets a short
blueprint; a full SaaS gets a thorough one. Use a TodoWrite item per step so nothing is
skipped.

### ÉTAPE 1 — Réflexion systémique (Architectural Blueprint)

Before creating or modifying **any** file, analyze the request and output your reasoning
in this exact format (in French, addressed to the user):

```
[ARCHITECTURAL BLUEPRINT]
- Objectif de la feature / du site :
- UI Kit recommandé & justification (à confirmer par l'utilisateur) :
- Structure des composants (découpage atomique + arborescence de dossiers) :
- Schéma des données / états (props, état local React, état global si nécessaire,
  Server vs Client Components) :
- Animations planifiées (specs Framer Motion : entrées / sorties / interactions) :
```

This blueprint is a thinking gate, not decoration. If you can't fill a line, you don't yet
understand the request — ask one targeted question instead of guessing. Wait for the user
to confirm the UI kit before ÉTAPE 2.

### ÉTAPE 2 — Scaffolding & Setup

Set up the foundation once, cleanly, with non-interactive commands.

1. **Project** (new project only): scaffold Next.js with App Router, TypeScript, Tailwind.
   ```bash
   npx create-next-app@latest <name> --ts --tailwind --app --eslint --src-dir --use-npm --yes
   ```
   If working in an existing repo, skip this and integrate into the current structure.
2. **Framer Motion**: `npm i framer-motion`.
3. **UI kit**: run the install/init steps from `references/ui-kits.md` for the confirmed kit.
4. **Folder structure** — establish a predictable, atomic layout:
   ```
   src/
     app/                 # routes, layouts, server actions
     components/
       ui/                # kit primitives (shadcn/NextUI) or low-level building blocks
       sections/          # page-level composites (Hero, Features, Pricing, …)
       layout/            # Navbar, Footer, Sidebar
     lib/                 # utils, helpers, server actions, data access
     styles/              # globals.css with @theme tokens
   ```
5. Establish design tokens early in `globals.css` `@theme` (colors, radius, fonts) so the
   whole build stays visually coherent rather than ad-hoc per component.

### ÉTAPE 3 — Build (atomic, component by component)

Build bottom-up: primitives → sections → pages. For each component:
- Default to **Server Components**; add `"use client"` only when it needs state, effects,
  event handlers, or Framer Motion.
- Keep components small and single-purpose. Compose; don't write 400-line page files.
- Type all props. Co-locate a component's variants/states with it.
- Pull copy/data into typed objects (e.g. a `features` array) instead of hardcoding inline
  so the layout is data-driven and easy to extend.
- Reuse the kit's primitives — don't reinvent buttons/cards the kit already ships.

### ÉTAPE 4 — Motion & Polish

Now make it feel alive and finished — this is what separates "production" from "scaffold".
- **Framer Motion**: implement the entrances/exits/interactions specced in ÉTAPE 1. Prefer
  `whileInView` for scroll reveals, `layout` for shared-element transitions, spring physics
  over linear easings. Stagger lists. Keep durations tasteful (~0.2–0.6s); avoid motion that
  fights usability.
- **Responsive**: mobile-first; verify every breakpoint. No horizontal overflow.
- **Dark mode**: wire it through tokens (especially NextUI / shadcn) — don't bolt on later.
- **Accessibility**: semantic HTML, focus states, `aria-*` where needed, respect
  `prefers-reduced-motion`.
- **Design distinctiveness**: deliberate type scale, spacing rhythm, and one or two signature
  visual moves. Avoid the generic AI look — see `references/design-principles.md`.

### ÉTAPE 5 — Vérification (run it for real)

Don't claim "done" without evidence.
- `npm run build` (or `next build`) compiles with no type/lint errors.
- Run `npm run dev` and confirm the page renders with no console errors.
- Visually check the actual result (the `vercel:verification` skill or a browser pass is
  ideal). State plainly what you verified; if something is incomplete, say so.

---

## 4. Quick reference — what to read when

| You're about to… | Read |
|------------------|------|
| Install / wire the chosen UI kit | `references/ui-kits.md` (that kit's section only) |
| Decide visual direction, avoid generic AI aesthetics | `references/design-principles.md` |

Keep this loop tight: blueprint → confirm kit → scaffold → build atomically → animate &
polish → verify. That discipline, applied every time, is the whole point of the skill.
