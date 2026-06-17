# Design principles — avoiding the generic AI look

The default failure mode of AI-built UIs is "competent but anonymous": centered hero,
purple-to-blue gradient, three identical feature cards, rounded-2xl everything, Inter font,
emoji icons. Production quality means making deliberate choices instead.

## Make these deliberate, not default

- **Type scale & font**: pick a real type scale (e.g. a modular ratio) and a font with
  character for headings. Don't leave everything at default Inter weights. Big, confident
  headline sizing reads as "designed".
- **Color**: commit to a palette with a clear primary and restrained accents. Avoid the
  reflexive indigo/violet gradient. Use tokens so it's consistent and themable.
- **Spacing rhythm**: generous, consistent vertical rhythm between sections. Cramped or
  evenly-grey spacing is the tell of a template.
- **One or two signature moves**: a distinctive hero treatment, an unexpected layout break,
  a tasteful motion signature — something the user remembers. Not five gimmicks; one or two
  done well.
- **Layout variety**: not every section is a centered 3-column grid. Alternate alignment,
  use asymmetry, bento layouts, full-bleed moments.

## Motion (Framer Motion)

- Scroll reveals with `whileInView` + a small `viewport={{ once: true }}` stagger feel
  premium; page-load-everything-at-once feels cheap.
- Spring physics over linear `ease`. Subtle, fast (~0.2–0.5s). Motion should guide the eye,
  not perform.
- Always respect `prefers-reduced-motion`.

## Quality bar before calling it done

- Looks intentional at mobile, tablet, desktop — no overflow, no orphaned elements.
- Real hover/focus/active states on every interactive element.
- Dark mode (if in scope) looks designed, not inverted.
- Copy is specific, not lorem ipsum, where the user gave you content.

If the user has a stronger, more specific aesthetic in mind, theirs wins — these are the
defaults for when no direction is given. The `frontend-design` skill is a deeper resource if
you want more on distinctive interface design.
