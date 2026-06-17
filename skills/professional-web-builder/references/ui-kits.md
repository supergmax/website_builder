# UI Kits — install & usage reference

Read **only the section for the kit confirmed by the user**. All four assume Next.js App
Router + Tailwind CSS v4 + Framer Motion (the mandatory stack).

> Tailwind v4 note: config is CSS-first. There is usually no `tailwind.config.js` — tokens
> live in `globals.css` under `@theme { … }`. A few kits still generate a config file; keep
> it only if a plugin needs it.

---

## A. shadcn/ui — the modular standard

Copy-in components you own and fully control. Best for SaaS, dashboards, design systems.

```bash
npx shadcn@latest init        # sets up components.json, utils, CSS vars
npx shadcn@latest add button card dialog input dropdown-menu   # add what you need
```

- Components land in `src/components/ui/` — they're yours to edit; theme via CSS variables
  in `globals.css`.
- Built on Radix primitives → accessible by default.
- Magic UI and Aceternity components are often installable through the same `shadcn add`
  registry mechanism — convenient when you want a shadcn base plus a few flashy pieces.
- Theme by editing the `--background`, `--foreground`, `--primary`, `--radius`, … tokens.

## B. Magic UI — marketing & landing pages

Animated, conversion-focused components (bento grid, marquee, animated beam, shimmer text,
interactive backgrounds). Pairs naturally with shadcn.

```bash
npx shadcn@latest init                         # if not already initialized
npx shadcn@latest add "https://magicui.design/r/<component>.json"
```

- Browse components at magicui.design; install per-component via the registry URL.
- Heavily Framer-Motion-based — components are client components.
- Use for the hero / above-the-fold "wow", then keep the rest of the page calm so the effect
  lands. Don't stack five animated backgrounds on one screen.

## C. Aceternity UI — cyberpunk / next-gen

Bold futuristic effects: parallax, moving border / glow cards, neon grids, spotlight,
3D card. Best for Web3, AI, trading, "futuristic" briefs.

```bash
npm i framer-motion clsx tailwind-merge
# add a `cn()` helper in src/lib/utils.ts (clsx + tailwind-merge)
```

- Most Aceternity components are **copy-paste**: take the component code from ui.aceternity.com
  into `src/components/ui/`, then import. Some are also available via the shadcn registry.
- They depend on Framer Motion and a `cn()` util — set those up first.
- Mind performance: parallax/glow effects are GPU-heavy. Respect `prefers-reduced-motion`
  and don't animate huge blurred layers on every section.

## D. NextUI — ready-made, accessible, themable

Pre-built component library installed as a dependency (no per-file copying). Best for fast
prototyping and a cohesive out-of-the-box system with strong theming.

> Heads-up: NextUI was rebranded to **HeroUI**. New projects should install `@heroui/react`
> (the `@nextui-org/*` packages are the legacy name). Confirm with the user which they want;
> the API is the same. Check current docs if unsure.

```bash
npm i @heroui/react framer-motion      # (legacy: @nextui-org/react)
```

- Wrap the app in the provider (`HeroUIProvider` / `NextUIProvider`) in a client boundary,
  typically in `app/providers.tsx`, rendered from the root layout.
- Tailwind v4: add the HeroUI/NextUI plugin per current docs so component styles resolve.
- Light/dark/custom themes are first-class — drive them through the provider + tokens rather
  than ad-hoc dark: classes.
- Use the shipped components (Button, Card, Modal, Navbar, Table…) instead of rebuilding them.

---

If install details have changed, fetch current docs (Context7 MCP or the kit's site) rather
than guessing — these libraries move fast.
