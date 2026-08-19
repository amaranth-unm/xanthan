# Xanthan Development Notes

Internal development reference for AI assistants and contributors working on the Xanthan framework. This is the canonical source of project guidance; tool-specific files should point here rather than duplicating these instructions.

---

## What Xanthan is

Xanthan is a Jekyll + Bootstrap framework for building academic websites. It's designed for people who have intellectual and editorial ambitions for their web presence but no interest in becoming web developers. The primary audience is academics, students, and digital humanities practitioners.

The framework has four templates (Portfolio, Class Project, ScrollStory, Full Xanthan) and a modular design system built on CSS custom properties, Liquid includes with documented parameters, and YAML configuration.

A core architectural claim: Xanthan is designed to be legible not just to humans but to AI assistants. Named variables, modular components, clear file organization, and YAML config mean that AI can make targeted, predictable changes. This is a genuine technical feature, not marketing.

---

## Templates vs. the base repo

Users never interact with the xanthan base repo directly. They use one of three templates:
- **portfolio** — for personal/professional sites and academic portfolios
- **class-project** — for course websites and collaborative class projects
- **scrollstory** — for scroll-driven narrative pages

The xanthan base repo is the source of truth. GitHub Actions sync `_includes/`, `_layouts/`, `assets/css/`, `assets/js/`, `scrollstories/`, and `docs/` to all three templates on every push to main. Template-specific files (`_config.yml`, `_data/nav-top.yml`, `_data/nav-sections.yml`) are NOT synced.

**Implication for development:** When you make a change to xanthan, ask whether it should affect all templates or just the xanthan demo site. Changes to synced directories affect everyone.

---

## Git and pull request workflow

Keep `main` as the clean, current source of truth. Each focused change should happen on a fresh branch created from updated `main`, then be merged through its own pull request.

### Before starting implementation work

1. Check the worktree:
   ```bash
   git status --short --branch
   ```
2. Return to `main`:
   ```bash
   git switch main
   ```
3. Fetch and fast-forward local `main`:
   ```bash
   git fetch origin
   git merge --ff-only origin/main
   ```
4. Create a new branch with the `codex/` prefix and a descriptive name:
   ```bash
   git switch -c codex/descriptive-change-name
   ```

Do not start new work from an old feature branch, even if it is clean. A merged pull request is finished; later commits to that branch will not reopen the PR.

### While a PR is open

- Keep related commits on the PR branch.
- If the user asks for follow-up work that belongs with the same review, commit it to the same branch and push.
- If the PR has already merged, stop using that branch. Sync `main`, create a new branch, and open a new PR.

### After the user merges a PR

1. Fetch and update local `main`:
   ```bash
   git switch main
   git fetch origin
   git merge --ff-only origin/main
   ```
2. Confirm the old branch is merged:
   ```bash
   git branch --merged main
   ```
3. Delete the merged local branch:
   ```bash
   git branch -d codex/descriptive-change-name
   ```
4. Delete the merged remote branch:
   ```bash
   git push origin --delete codex/descriptive-change-name
   ```
5. Confirm there are no unexpected open PRs or dirty files:
   ```bash
   gh pr list --state open
   git status --short --branch
   ```

### Why this matters

A pull request compares one branch to `main`. Once the PR is merged, GitHub considers that PR complete. If we keep committing to the old branch afterward, those commits can sit outside `main` with no open PR, which makes it look like the work disappeared. The reliable rhythm is: merge, return to `main`, update `main`, delete the temporary branch, then start the next change from a fresh branch.

---

## Voice and tone

**Write like a knowledgeable colleague walking someone through unfamiliar territory.** Respectful of the reader's intelligence, occasionally wry, grounded in *why this matters* rather than cheerleading. The audience has an instinct against corporate polish and startup-onboarding energy.

### Do

- Lead with *why*, not *what* or *how*. Open pages with the intellectual or human case, then let practical details follow.
- Trust the reader. They're smart people working outside their technical comfort zone. Acknowledge that without condescending.
- Be direct. Short sentences. Say what you mean.
- Use concrete examples. Show what a prompt looks like, what the AI will do, what the result looks like.
- Frame the user as the editor, the decision-maker. AI and the framework are tools; the vision is theirs.
- Use analogies from scholarly and creative work (author/typesetter, director/camera operator) rather than tech industry metaphors.

### Don't

- Don't use SaaS onboarding energy ("You've got this!", "Let's get started!", "Congratulations!"). Warmth through substance, not enthusiasm.
- Don't use FAQ-style headings ("Why not Squarespace?"). Make arguments positively.
- Don't write meta-descriptions ("This page explains..."). Just make the argument.
- Don't use service language ("We have everything you need"). Frame as collaboration and capability.
- Don't front-load technical vocabulary. Use plain language first, then introduce terms naturally as the reader encounters the materials. Technical terms are learned through use, not through definitions.
- Don't assume CSS/HTML/Git knowledge unless the page is explicitly a reference page. Even then, explain *why* before *how*.

### The trust gradient

Many users are completely new to AI-assisted technical work. They need to see it work on something small (change a color, swap a font) before they'll trust it with something ambitious (build a ScrollStory, generate a CV page from a Word file). Documentation should honor this gradient:

1. **On-ramp**: Simple, concrete, immediately rewarding (Your First AI Edit)
2. **Building confidence**: More substantial tasks organized by intent (Building with AI)
3. **Reference**: Look things up when you know what you need (Component Library, Pages & Front Matter)

The key insight: asking the AI to explain things builds vocabulary, and vocabulary builds precision and control. This feedback loop---use plain language, learn a term, use the term next time---is the real pedagogy of the framework.

---

## Documentation structure

Docs are organized by **user intent**, not by technology:

```
Getting Started    → "I just want to get going" (4 pages)
Editing            → "I want to customize my site" (11 pages)
Reference          → "I need to look something up" (5 pages)
Using AI           → "I want to use AI to help" (3 pages)
ScrollStories      → "I want to build a scroll narrative" (3 pages + 3 examples)
FAQs               → Common questions
```

### Getting Started (live in 15 minutes)
- Choose a Template → Create Your Site → Make Your First Edit → Add an Image
- Each page is self-contained and short. No conceptual detours.

### Editing (make it mine)
- Editing Workflows, Pages & Front Matter, Typography, Images, Media, Colors & Fonts, Themes, Navigation, Tags, Previewing Locally
- The split between Colors & Fonts (quick CSS variable tweaks) and Themes (creating/applying whole theme files) is deliberate: different cognitive tasks.

### Reference (look things up)
- Site Structure, Pages & Front Matter, Component Library, Troubleshooting, Color Palettes
- Component Library is a single long page with scrollspy-toc. Reference pages should be long and Ctrl-F friendly.

### Using AI (3 pages)
- Overview (architectural argument + editorial model + setup)
- Your First AI Edit (on-ramp: change a color, swap a font, ask for explanations)
- Building with AI (ambitious examples organized by intent, with scrollspy-toc)

---

## Architecture decisions

### CSS design system

Where things live. A stylesheet is named for what it styles; if you cannot
guess the file, the answer is in the header block at the top of each one.

| File | Styles |
|------|--------|
| `base.css` | tokens, reset, `.container` grid, section bands, accessibility |
| `typography.css` | prose, headings, tables, code, footnotes, alerts |
| `buttons.css` | buttons and the feature row |
| `feature-grid.css` | short titled points side by side |
| `jumbotron.css` | full-bleed image band with text over it |
| `images.css` | figures, image-plus-text, carousel |
| `footer.css` | site footer |
| `cards.css` | image-and-text cards, vertical and horizontal |
| `gallery.css` | image-first tiles, caption over the picture |
| `toc.css` | table-of-contents rows |
| `tags.css` | tag pills and the tag filter UI |
| `home.css` | landing page bands: hero, split intro, feature block, picks, link index |
| `nav.css` | top nav and breadcrumbs |
| `nav-left.css`, `nav-profile.css` | the two sidebar navigations |
| `page-header.css` | the front-matter header studio |
| `backgrounds.css`, `scrollstory.css` | scrollybox backgrounds and scrollstory type |
| `search.css`, `map.css`, `docs.css`, `workshop.css` | conditionally loaded, page-type scoped |

- All visual design controlled by CSS custom properties in `assets/css/base.css`
- Variables use semantic names: `--accent-primary`, `--spacing-md`, `--text-body`, `--bg-card`
- Themes are separate CSS files that override base variables
- Typography scale uses `clamp()` for responsive sizing
- Every stylesheet carries a header block saying what it styles, when it loads,
  what consumes it, and what belongs elsewhere. Read it before editing; the
  filename alone does not always tell you (see Coding standards → CSS)

### Components
- All reusable components live in `_includes/` with subdirectories (images/, nav/, scrollstory/)
- Each include has documented parameters
- Components are used with Liquid include tags in Markdown pages

### Navigation
- Top nav configured in `_data/nav-top.yml` (YAML list of titles, URLs, dividers)
- Supports dropdowns, dividers, and direct links
- Left-nav and profile-nav are alternative layouts (nav-left, nav-profile) with their own data files
- Nav demos live as unlisted pages in `docs/navigation/`

### Workshop mode

Workshop mode is a live-presentation feature that highlights bullet points one at a time using keyboard shortcuts. It is toggled by the checkbox in the nav (or by pressing 'W'). Not documented in public-facing docs — it's an internal feature for instructors and grad students doing presentations. Styles live in `assets/css/workshop.css`; JS lives in `assets/js/workshop.js` (or inline in `html-js.html`). The nav checkbox is rendered in `_includes/nav/nav-top.html`.

### Templates and syncing
- Three template repos (portfolio, scrollstory, class-project) are synced from xanthan via GitHub Actions (`.github/workflows/sync-templates.yml`)
- Sync copies: `_includes/`, `_layouts/`, `assets/css/`, `assets/js/`, `scrollstories/`, `docs/` (including root index.md), `assets/images/backgrounds/`, Gemfile, .gitignore, CHANGELOG
- Does NOT sync: `_config.yml`, `nav-top.yml`, `nav-sections.yml` (template-specific)
- `docs/index.md` is now synced — it uses Liquid queries to auto-generate the link list, so it works in any template without modification

---

## Writing new documentation

When adding or revising documentation:

1. **Check the tone.** Read the section above. If a draft sounds like a SaaS onboarding flow or a technical manual, revise.
2. **Lead with the user's goal.** "You want to change how your site looks" not "CSS custom properties allow you to..."
3. **Use plain-language prompts in examples.** Don't write `"In assets/css/base.css, change the --accent-primary variable"`. Write `"Change my main highlight color to a deep teal"`. Explain the technical details *after* showing what happened.
4. **Include the "why this works" payoff.** After showing a task, briefly explain what the user just learned and why it matters for their next task.
5. **Keep reference pages long and scannable.** Use scrollspy-toc for pages with many sections. Reference users want Ctrl-F, not click-through.
6. **Don't add features to documentation pages.** Card layouts for hero content feel dated. Prefer large sections with images. Single-color dividers, not multi-color borders.

---

## Writing new features

When adding new includes, components, or framework features:

1. **Use semantic CSS variable names.** Follow the existing patterns in `base.css`.
2. **Document parameters.** Every include should have a clear parameter list. Add it to the Component Library page.
3. **Make it work with AI.** Named parameters, clear defaults, predictable behavior. If an AI assistant can't figure out how to use the component from its code and comments, it's not documented well enough.
4. **Test across templates.** Changes to `_includes/`, `_layouts/`, and `assets/` propagate to all templates via sync. Make sure they don't break template-specific configurations.
5. **Respect the design system.** Use existing variables for colors, spacing, radii, and typography. Don't hardcode values.

---

## Common pitfalls

- **Editing xanthan vs. amaranth**: The Amaranth site at UNM is a separate project that *uses* Xanthan. Changes to the framework go in xanthan; changes to that specific site go in amaranth.
- **scrollspy-toc heading level**: the component tracks `h2` by default. On pages whose sections are `h3` (e.g. `faqs.md`, where each question is a question-sized heading), pass `headings="h3"` or the TOC comes up empty.
- **scrollspy-toc reserves its column via `:has()`**: above 1100px, `.container:has(.scrollspy-toc)` redefines the container's `grid-template-columns` to add a sidebar column and narrow the text column. The nav must therefore be absent from the DOM — not merely hidden — when it has nothing to show, or the page keeps an empty column. The include's JS removes itself when no headings match. It is grid-based, not floated; don't reintroduce float/clear workarounds.
- **rsync exclude depth**: `--exclude='index.md'` matches at all depths. Use `--exclude='/index.md'` to match only the root.
- **Navbar centering**: Brand + nav are centered as a group via CSS (`justify-content: center` on container-fluid + `flex-grow: 0` on navbar-collapse), not via Bootstrap margin utilities.

---

## Coding standards

These rules govern all additions to the framework. They exist to keep the codebase consistent and AI-legible.

### CSS

**Token discipline.** This is why the variable layer has stayed healthy; keep it that way.

- **No hardcoded hex colors or raw rgba values** outside of `:root` palette definitions.
- **No raw palette variable names** (like `--sage`, `--golden-clay`, `--amber`) used in rules outside `:root`. Always use semantic variables (`--accent-primary`, `--interactive-hover`, `--text-body`).
- **No hardcoded spacing, radius, or shadow values.** Use `--spacing-*`, `--radius-*`, `--shadow-*`.
- New semantic variables go in `base.css` `:root`, named `--{category}-{purpose}` (e.g., `--bg-footer`, `--text-footer-link`).
- New named palette colors go in `base.css` `:root` palette block and must immediately be mapped to a semantic variable.
- Themes override semantic variables only, never raw palette names.

**One file per component.** A stylesheet is named for the thing it styles, and
an AI asked to restyle that thing should be able to guess the filename. Do not
add a component's styles to `base.css` because it is already open — that is how
`base.css` once grew to 1,000 lines with six components inside it, and how
`cards.css` ended up holding four unrelated families.

- A new component gets a new stylesheet, loaded unconditionally in
  `html/html-head.html` alongside the others. Many small files cost nothing on
  HTTP/2 and are worth far more than a saved request.
- Load conditionally only when a stylesheet is genuinely page-type scoped
  (`docs.css`, `scrollstory.css`, `page-header.css`, `search.css`). If you do,
  the header must say so — a conditionally loaded file's selectors look
  site-wide and are not.
- If a file needs more than one top-level section banner to describe itself, it
  is probably two files.

**Every stylesheet opens with a header block** in this shape. It is the first
thing anyone — person or model — reads before editing, and it is the cheapest
place to prevent an edit landing in the wrong file:

```
/*****************************************************
NAME

What this file is for, in a sentence or two. If several distinct families
share the file, list them.

Loads:    every page | only when <condition>
Used by:  the includes and layouts that consume these classes
Needs:    the tokens or files this depends on
Not here: the adjacent thing someone would plausibly look for here, and the
          file it actually lives in
*****************************************************/
```

The `Not here:` line is the one that does the real work. Write it for the
mistake you can see someone making, not as a formality.

**Explain the non-obvious in place.** A rule that looks wrong until you know
why gets a comment saying why — see the `overflow` note on `.home-pick img` in
`home.css`, or the container-indent note on `.section-alt:has(> .container)` in
`base.css`. Comments that restate the property (`/* Typography */` above a
`font-family`) are noise; delete them when you touch that code.

### Includes / components
- **Parameter names are hyphenated**: `image-path`, `box-align`, `alt-text`. Never camelCase or underscore.
- **Every include has a `{% raw %}{% comment %}{% endraw %}` block** at the top listing all parameters with types, defaults, and a one-line description.
- **Every include is documented in the Component Library** before it ships.
- Components must fail visibly, not silently. If a required parameter is missing, emit a visible warning (e.g., a placeholder div with a descriptive message).
- Parameters should be thematically grouped in the comment block: image params together, layout params together.

### Page content

- **Pages should not contain raw HTML.** If a page needs structure the Markdown
  cannot express, that is a missing component, not a licence to open a `div`.
  A page full of `{::nomarkdown}` blocks cannot be edited by someone who only
  knows Markdown, which is most of the audience.
- **Wrapping structure comes as an open/close include pair**, named `x.html`
  and `x-end.html` (see `layout/section.html`). Document the pairing in the
  comment block — an unclosed wrapper swallows the rest of the page.
- **A component that breaks out of the text column renders its own heading**
  rather than expecting one above the include. A heading written in the page
  body sits on the text column and will not line up (see `nav/gallery-grid.html`).

### Layouts
- The default layout is `default.html`. Other layouts extend or parallel it: `scrollstory.html`, `nav-left.html`, `nav-profile.html`.
- All layouts include `html/html-head.html`, `nav/nav-top.html`, and `layout/footer.html`.

### JavaScript
- Inline scripts in includes must be wrapped in an IIFE to avoid polluting global scope.
- Check for library existence before using it (`if (typeof L === 'undefined') return;`).
- Use `console.warn()` for user-facing errors, not silent failures.
- Touch events and mobile behavior must be tested.

### Accessibility

These are requirements, not aspirations. The project's argument is that a site
should be readable by the people who use, teach, and inherit it; readers using
a screen reader or a keyboard are part of that claim, not an edge case.

- **Every component that renders an image takes an alt parameter.** Falling
  back to a caption or title is acceptable; rendering no `alt` attribute at all
  is not.
- **Never hard-code a heading level in a component.** A component cannot know
  what section it sits in, so a fixed level creates gaps in the document
  outline. Take a `heading-level` parameter with a sensible default (see
  `typography/alert.html`).
- **Anything interactive must work from the keyboard.** If you give an element
  `role="button"`, it has to respond to Space as well as Enter — anchors only
  give you Enter for free. Menus and overlays close on Escape.
- **Every form control has a label**, `.visually-hidden` if the design has no
  room for a visible one. A placeholder is not a label.
- **Contrast: 4.5:1 for body text, 3:1 for large text**, checked against the
  themes the component will actually appear on, not just the default one.
- **Respect `prefers-reduced-motion`.** `base.css` neutralises CSS transitions
  and animations globally; components that animate in JavaScript must check the
  query themselves (see `images/carousel.html`).
- **Motion the user did not start must be pausable.** `scrollybox/auto-scroll.html`
  is the reference: opt-in, pausable from the keyboard, with a visible state.
- **Use the semantic element before reaching for a role.** `<aside>`, `<nav>`,
  `<main>` carry meaning that a div plus ARIA only approximates. Reserve
  `role="alert"` for content that genuinely changes after load — it interrupts
  screen readers.

Layouts supply `<main id="main">` and the skip link (`nav/skip-link.html`); a
new layout needs both.

### Documentation pages
- Lead with the user's goal, not the technical mechanism.
- Use plain-language prompts in AI examples, not technical descriptions.
- No FAQ-style headings — make arguments positively.
- Reference pages are long and Ctrl-F friendly. Task pages are short and self-contained.
- Every new include gets an entry in the Component Library with: description, copy-paste example, parameter table, and a real-world usage example.
