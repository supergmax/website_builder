# Roadmap — Professional Web Builder

Planned extensions to grow the skill from "beautiful frontend" into a full
production-application builder. Each item is intended to ship as a new
`references/*.md` module plus a short pointer in `SKILL.md`, keeping the core lean.

Status legend: 🔵 planned · 🟡 in progress · 🟢 shipped

---

## 1. Backend & data — Supabase 🔵

Make the skill able to wire a real backend, not just UI.

- **`references/supabase.md`** covering:
  - Project setup, `@supabase/supabase-js` + `@supabase/ssr` for Next.js App Router.
  - Server-side auth done right: cookie-based sessions, `getUser()` (never trust
    `getSession()` server-side), middleware/proxy session refresh.
  - Schema & migrations via the Supabase CLI; typed access with generated TS types.
  - **Row Level Security (RLS) by default** — every table policy-protected; document the
    common patterns (owner-based, role-based).
  - Storage (file uploads), Realtime (live dashboards), Edge Functions.
  - Auth UI flows that plug into each UI kit (login/signup/reset).
- A `references/data-layer.md` decision guide: when Supabase vs. Drizzle/Postgres vs.
  Vercel Marketplace storage (Neon, Upstash).
- Leverage the installed Supabase MCP tools and the `supabase:supabase` skill where present.

## 2. Headless CMS 🔵

Let content-heavy sites (marketing, blogs, docs) be editor-friendly.

- **`references/headless-cms.md`** with a selection matrix and integration recipes:
  - **Sanity** — structured content, real-time, great DX; Next.js App Router patterns.
  - **Payload CMS** — TypeScript-native, self-hostable, can live in the same repo.
  - **Contentful / Hygraph** — enterprise, GraphQL-first.
  - **MDX / Content Collections** — when a full CMS is overkill (docs, changelogs).
- Patterns for ISR / on-demand revalidation (`revalidateTag`) so content updates without
  redeploys; preview mode for draft content.
- Map CMS content models → the kit's section components (Hero, Features, Pricing…).

## 3. Admin dashboard systems 🔵

A repeatable "admin layer" so dashboards aren't rebuilt from scratch each time.

- **`references/admin-dashboard.md`** covering:
  - App-shell pattern: sidebar + topbar + content, role-aware nav.
  - Data tables with sorting/filtering/pagination (TanStack Table + shadcn), CRUD forms
    with validation (React Hook Form + Zod), optimistic updates via Server Actions.
  - Charts (Recharts / Tremor) for metrics; KPI cards; activity feeds.
  - AuthZ patterns: protected routes, role/permission gates, audit-friendly mutations.
  - Optionally evaluate ready-made admin frameworks (Refine, Tremor) vs. composing from
    shadcn — with a clear "when to use which".
- A starter recipe combining Supabase (data + auth) + shadcn (UI) into a working admin in
  one pass.

## 4. Cross-cutting / later 🔵

- **Auth providers reference** — Clerk, Auth0, Supabase Auth, NextAuth — selection + setup.
- **Payments** — Stripe (checkout, subscriptions, webhooks) recipe.
- **Deployment** — opinionated Vercel deploy path (env vars, preview/prod, edge config).
- **Testing & quality gate** — Playwright smoke tests baked into ÉTAPE 5 verification.
- **More UI kits / reference depth** — expand per-kit references with concrete component
  recipes; add a 5th kit only if it earns its place.
- **i18n** — internationalization patterns for the generated apps.
- **Skill evals** — quantitative trigger-accuracy optimization + qualitative output review
  (via skill-creator) once behavior stabilizes.

---

## Guiding principle

Grow by **adding modules, not bloating the core**. SKILL.md stays a lean orchestrator; each
new capability is a focused reference file Claude reads only when the task calls for it.
