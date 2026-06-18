# Design Excellence — the final taste pass

The last gate before "done". The build can compile and still look like everyone else's.
This pass exists to make the result *intentional, distinctive, and impeccable* — to kill
"AI slop" and earn every pixel.

> Synthesized from three references — see **Credits** at the bottom. Apply with judgment,
> not as a rote checklist: taste is contextual.

---

## 1. Read the brief before you judge (taste = context)

Quality is relative to intent. Re-state, in one line each, before critiquing:
- **Industry & audience** — a fintech dashboard, a fashion landing, and a children's app
  have opposite "good".
- **Mood** — restrained / playful / luxurious / technical / editorial.
- **Motion depth** — calm and minimal, or rich and expressive.
- **Anti-references** — what it must NOT look like (e.g. "not another generic SaaS template").

If the design doesn't visibly serve these, it's wrong even if it's "clean".

---

## 2. Anti-slop detectors (the concrete don'ts)

These are the tells of machine-generated UI. Scan for them and fix every hit:

**Colour & contrast**
- ❌ Grey text on coloured backgrounds → use a tinted/opacity variant of the bg's own hue.
- ❌ Pure black (`#000`) or pure grey → **always tint** toward the brand hue (warm/cool).
- ❌ The reflexive indigo→purple gradient, dark "glow" blurs, neon-on-black by default.
- ✅ Commit to a real palette: one confident primary, restrained accents, tinted neutrals.

**Type**
- ❌ Shipping the brand in Arial / system defaults / plain Inter as the *display* face.
- ✅ Pick a heading face with character; set a deliberate modular scale; mind line-length
  (~45–75 characters) and line-height. Big, confident headings read as "designed".

**Layout & components**
- ❌ Wrapping everything in cards; nesting cards inside cards; the same centered 3-col grid
  every section; side-tab coloured left borders on alerts.
- ❌ Cramped padding, inconsistent spacing, skipped heading levels (h2→h4).
- ✅ Generous, consistent vertical rhythm. Vary alignment/asymmetry/bento. One or two
  signature moves — not five gimmicks.

**Interaction**
- ❌ Touch targets < 44px; missing hover/focus/active states; non-semantic divs as buttons.

---

## 3. Motion craft (animation that earns its place)

Motion is communication, not decoration. Every animation must guide attention, show a
relationship, or give feedback — otherwise cut it.

- **Duration**: snappy. ~150–250 ms for micro-interactions (hover, toggle, button), ~300–500
  ms for larger transitions (page/section, modal). Slower than that feels sluggish.
- **Easing**: `ease-out` for entrances (fast in, gentle settle), `ease-in` for exits, or
  **spring** physics. **Never** linear for UI, and **never** bounce/elastic — it reads dated.
- **Interruptible**: animations must respond to new input mid-flight, not block it.
- **Cheap & smooth**: animate `transform` and `opacity` (GPU) — never `width`/`height`/`top`
  in a hot path. Target 60fps.
- **Origin-aware**: things animate *from where they come from* (a menu from its trigger, a
  toast from the edge). Shared-element transitions over hard cuts.
- **Restraint**: stagger lists subtly; don't animate everything on load at once.
- **Always** honour `prefers-reduced-motion` — provide a static, instant fallback.

---

## 4. Refinement moves (a vocabulary for the pass)

Run the design through these lenses, in roughly this order. Each is a question to answer
with a concrete edit:

1. **Critique** — hierarchy, clarity, resonance. Does the eye land where it should? Is the
   one most important thing unmistakably the most prominent?
2. **Distill** — strip to essence. Remove a border, a box, a colour, a word. What can go?
3. **Typeset** — scale, weight, tracking, measure. Make type do more of the work.
4. **Colorize** — introduce colour strategically, not everywhere. Accent with intent.
5. **Layout** — spacing rhythm, alignment, density. Fix the negative space.
6. **Animate** — add only motion that communicates (see §3).
7. **Delight** — one small, tasteful moment of joy (a considered hover, an empty state with
   personality). One — not a circus.
8. **Onboard / harden** — empty states, loading, error, and edge cases look *designed*, not
   default. Real copy, not lorem ipsum.
9. **Clarify** — tighten UX copy: specific, human, concise. Labels over jargon.
10. **Adapt & optimize** — every breakpoint intentional; images sized; no layout shift.

You don't need all ten every time — pick the lenses the work needs, but always **critique**
and **distill**.

---

## 5. Dark mode (if in scope) — a first-class mode

Not an inversion. Both themes need equal contrast, hierarchy, and polish. Drive both from
the same tokens; check that accents, shadows, and images hold up in each.

---

## 6. Pre-flight checklist — every box must honestly pass

Before you say "done", confirm — out loud, truthfully:

- [ ] No anti-slop tells from §2 remain (grey-on-colour, pure black, default gradients,
      nested cards, default fonts as display).
- [ ] Type scale is deliberate; measure 45–75ch; headings confident.
- [ ] Palette is intentional and tinted; contrast passes WCAG AA.
- [ ] Spacing rhythm is consistent; one or two signature moves present.
- [ ] Every interactive element has hover/focus/active; touch targets ≥ 44px.
- [ ] Motion is purposeful, fast, eased correctly, interruptible, reduced-motion safe.
- [ ] Empty / loading / error states are designed; copy is real and specific.
- [ ] Responsive at mobile/tablet/desktop; no overflow, no layout shift.
- [ ] Dark mode (if any) is designed, not inverted.
- [ ] It looks like *this* brief — not a generic template. State what makes it distinctive.

If a box can't honestly be ticked, the work isn't done. Fix it, then ship.

---

## Credits

This pass distills the spirit of three excellent open design skills — go read the originals:
- **Taste** — the anti-slop frontend framework for AI agents · <https://www.tasteskill.dev/>
- **Impeccable** by Paul Bakaus — design-language commands + anti-pattern detectors ·
  <https://github.com/pbakaus/impeccable>
- **Emil Kowalski's design-engineering & animation skill** ·
  <https://github.com/emilkowalski/skill> · <https://animations.dev>
