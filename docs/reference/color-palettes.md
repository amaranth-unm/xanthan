---
title: Color Palette Design Lab
layout: xanthan
date: 2024-12-02
---

{% include nav/scrollspy-toc.html %}

# Color Palette Design Lab

Use this page as a working design tool, not just a gallery. You can compare built-in options, drop in your own custom palette, and pressure-test how colors behave across real interface elements.

If your goal is to build a custom theme file, this is a fast place to prototype decisions before moving them into `assets/css/my-theme.css`.

<style>
/* Palette definitions */
.palette-current {
  --demo-primary: #c05131;
  --demo-secondary: #8a9a7b;
  --demo-accent: #f59e0b;
  --demo-bg: #F5EFE6;
  --demo-bg-secondary: #e8dcc8;
  --demo-bg-nav: #3d2817;
  --demo-text: #3a1602;
  --demo-text-light: #ffffff;
}

.palette-digital-scholar {
  --demo-primary: #4f46e5;
  --demo-secondary: #475569;
  --demo-accent: #f59e0b;
  --demo-bg: #ffffff;
  --demo-bg-secondary: #f8fafc;
  --demo-bg-nav: #1e293b;
  --demo-text: #0f172a;
  --demo-text-light: #cbd5e1;
}

.palette-friendly-modern {
  --demo-primary: #6b8e7f;
  --demo-secondary: #b8956a;
  --demo-accent: #f59e0b;
  --demo-bg: #fdfcfb;
  --demo-bg-secondary: #f5f3f0;
  --demo-bg-nav: #3d4e42;
  --demo-text: #2d3e35;
  --demo-text-light: #e8e4df;
}

.palette-minimal-clean {
  --demo-primary: #18181b;
  --demo-secondary: #71717a;
  --demo-accent: #22c55e;
  --demo-bg: #fafafa;
  --demo-bg-secondary: #f4f4f5;
  --demo-bg-nav: #18181b;
  --demo-text: #09090b;
  --demo-text-light: #e4e4e7;
}

/* Edit this block to test your own palette */
.palette-custom {
  --demo-primary: #1f6f8b;
  --demo-secondary: #475569;
  --demo-accent: #f59e0b;
  --demo-bg: #f8fafc;
  --demo-bg-secondary: #e2e8f0;
  --demo-bg-nav: #0f172a;
  --demo-text: #1e293b;
  --demo-text-light: #f8fafc;
}

/* Demo components */
.palette-demo {
  margin: 2rem 0;
  padding: 2rem;
  border: 2px solid #ddd;
  border-radius: 8px;
  background: var(--demo-bg);
}

.demo-nav {
  background: var(--demo-bg-nav);
  color: var(--demo-text-light);
  padding: 0.5rem 1rem;
  border-radius: 4px;
  margin-bottom: 1rem;
  display: flex;
  gap: 1rem;
  align-items: center;
}

.demo-nav-brand {
  font-weight: 600;
  font-size: 1.1rem;
}

.demo-nav-link {
  color: var(--demo-text-light);
  text-decoration: none;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  transition: background 0.2s;
}

.demo-nav-link:hover {
  background: var(--demo-primary);
}

.demo-content {
  background: var(--demo-bg-secondary);
  padding: 1.5rem;
  border-radius: 4px;
  color: var(--demo-text);
}

.demo-heading {
  color: var(--demo-primary);
  margin-bottom: 0.5rem;
}

.demo-text {
  color: var(--demo-text);
  margin-bottom: 1rem;
}

.demo-link {
  color: var(--demo-primary);
  text-decoration: underline;
}

.demo-button {
  background: var(--demo-primary);
  color: var(--demo-text-light);
  padding: 0.75rem 1.5rem;
  border: none;
  border-radius: 6px;
  font-size: 1rem;
  cursor: pointer;
  transition: opacity 0.2s;
}

.demo-button:hover {
  opacity: 0.9;
}

.demo-secondary-button {
  background: var(--demo-accent);
  color: var(--demo-text-light);
  padding: 0.75rem 1.5rem;
  border: none;
  border-radius: 6px;
  font-size: 1rem;
  cursor: pointer;
  margin-left: 0.5rem;
}

.demo-accent-text {
  color: var(--demo-accent);
  font-weight: 600;
}

.switcher-buttons {
  display: flex;
  gap: 1rem;
  margin: 2rem 0;
  flex-wrap: wrap;
}

.switcher-button {
  padding: 0.75rem 1.5rem;
  border: 2px solid #333;
  border-radius: 6px;
  background: white;
  cursor: pointer;
  font-weight: 600;
  transition: all 0.2s;
}

.switcher-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.switcher-button.active {
  background: #333;
  color: white;
}

.color-info {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
  margin: 2rem 0;
}

.color-swatch {
  padding: 1rem;
  border-radius: 6px;
  text-align: center;
  font-size: 0.9rem;
}

.demo-card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 1rem;
  margin-top: 1rem;
}

.demo-card {
  background: var(--demo-bg);
  border: 1px solid color-mix(in srgb, var(--demo-text) 15%, transparent);
  border-radius: 8px;
  padding: 1rem;
}

.demo-card h3 {
  color: var(--demo-primary);
  margin-top: 0;
  margin-bottom: 0.4rem;
}

.demo-card p {
  margin-bottom: 0.6rem;
}

.demo-badge {
  display: inline-block;
  background: var(--demo-accent);
  color: var(--demo-text-light);
  font-size: 0.75rem;
  padding: 0.2rem 0.5rem;
  border-radius: 999px;
}

.demo-quote {
  border-left: 4px solid var(--demo-primary);
  padding: 0.75rem 1rem;
  background: var(--demo-bg);
  margin-top: 1rem;
}

.demo-code {
  background: var(--demo-bg-nav);
  color: var(--demo-text-light);
  padding: 0.75rem;
  border-radius: 6px;
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", monospace;
  margin-top: 1rem;
  font-size: 0.85rem;
}

.demo-table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 1rem;
  background: var(--demo-bg);
}

.demo-table th,
.demo-table td {
  border: 1px solid color-mix(in srgb, var(--demo-text) 18%, transparent);
  padding: 0.5rem 0.6rem;
  text-align: left;
}

.demo-table th {
  background: var(--demo-bg-secondary);
  color: var(--demo-primary);
}
</style>

<div class="switcher-buttons">
  <button class="switcher-button active" onclick="switchPalette('current', this)">Current (Earthy)</button>
  <button class="switcher-button" onclick="switchPalette('digital-scholar', this)">Digital Scholar</button>
  <button class="switcher-button" onclick="switchPalette('friendly-modern', this)">Friendly Modern</button>
  <button class="switcher-button" onclick="switchPalette('minimal-clean', this)">Minimal Clean</button>
  <button class="switcher-button" onclick="switchPalette('custom', this)">Custom (Edit Me)</button>
</div>

<div id="demo-container" class="palette-demo palette-current">

  <h2>Navigation Demo</h2>

  <div class="demo-nav">
    <span class="demo-nav-brand">Xanthan</span>
    <a href="#" class="demo-nav-link">Instructions</a>
    <a href="#" class="demo-nav-link">Components</a>
    <a href="#" class="demo-nav-link">FAQs</a>
  </div>

  <h2>Content Demo</h2>

  <div class="demo-content">
    <h2 class="demo-heading">Welcome to Xanthan</h2>
    <p class="demo-text">
      Build professional portfolios, class projects, and digital narratives.
      <a href="#" class="demo-link">Learn more about our features</a>.
    </p>
    <p class="demo-text">
      This template emphasizes <span class="demo-accent-text">sustainability</span> and
      <span class="demo-accent-text">ownership</span> of your content.
    </p>
    <button class="demo-button">Get Started</button>
    <button class="demo-secondary-button">View Examples</button>

    <div class="demo-card-grid">
      <article class="demo-card">
        <h3>Project Card</h3>
        <p>Short summary text over a card background.</p>
        <span class="demo-badge">Featured</span>
      </article>
      <article class="demo-card">
        <h3>Resource Card</h3>
        <p>Another card to compare border and text contrast.</p>
        <a href="#" class="demo-link">Read more</a>
      </article>
    </div>

    <blockquote class="demo-quote">
      Good palettes support hierarchy. Great palettes support hierarchy without shouting.
    </blockquote>

    <pre class="demo-code">--bg-page: var(--warm-white);
--text-body: var(--sage-dark);
--accent-primary: var(--sage);</pre>

    <table class="demo-table">
      <thead>
        <tr>
          <th>Element</th>
          <th>What to check</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Buttons</td>
          <td>Is text readable in hover and default states?</td>
        </tr>
        <tr>
          <td>Cards</td>
          <td>Can you see card boundaries without harsh contrast?</td>
        </tr>
      </tbody>
    </table>
  </div>

  <h2>Heading Hierarchy</h2>

  <h1 style="color: var(--demo-primary);">H1 Heading - Primary Color</h1>
  <h2 style="color: var(--demo-secondary);">H2 Heading - Secondary Color</h2>
  <h3 style="color: var(--demo-primary); opacity: 0.8;">H3 Heading - Primary Variant</h3>
  <h4 style="color: var(--demo-accent);">H4 Heading - Accent Color</h4>

  <h2>Color Reference</h2>

  <div id="color-reference" class="color-info">
    <!-- Will be populated by JavaScript -->
  </div>

</div>

<script>
function switchPalette(palette, buttonEl) {
  const container = document.getElementById('demo-container');
  const buttons = document.querySelectorAll('.switcher-button');

  // Remove all palette classes
  container.className = 'palette-demo palette-' + palette;

  // Update active button
  buttons.forEach(btn => btn.classList.remove('active'));
  buttonEl.classList.add('active');

  // Update color reference
  updateColorReference();
}

function updateColorReference() {
  const container = document.getElementById('demo-container');
  const styles = window.getComputedStyle(container);

  const colors = {
    'Primary': styles.getPropertyValue('--demo-primary'),
    'Secondary': styles.getPropertyValue('--demo-secondary'),
    'Accent': styles.getPropertyValue('--demo-accent'),
    'Background': styles.getPropertyValue('--demo-bg'),
    'Card Background': styles.getPropertyValue('--demo-bg-secondary'),
    'Nav Background': styles.getPropertyValue('--demo-bg-nav'),
    'Text': styles.getPropertyValue('--demo-text'),
    'Text on Dark': styles.getPropertyValue('--demo-text-light')
  };

  const reference = document.getElementById('color-reference');
  reference.innerHTML = '';

  for (const [name, value] of Object.entries(colors)) {
    const swatch = document.createElement('div');
    swatch.className = 'color-swatch';
    swatch.style.background = value;
    swatch.style.color = name.includes('Nav') || name === 'Text' ? '#fff' : '#000';
    swatch.innerHTML = `<strong>${name}</strong><br>${value}`;
    reference.appendChild(swatch);
  }
}

// Initialize
updateColorReference();
</script>

---

## Use this page as a workflow

1. Start with a built-in palette and inspect hierarchy (headings, buttons, cards, quote, code, table).
2. Switch to **Custom (Edit Me)** and modify the `.palette-custom` block at the top of this page.
3. Compare your custom palette against built-ins before changing site-wide CSS.
4. Move final values into your theme file (`assets/css/my-theme.css`) using semantic variables.

---

## Add your own palette in 3 minutes

Edit this block near the top of the page:

```css
.palette-custom {
  --demo-primary: #1f6f8b;
  --demo-secondary: #475569;
  --demo-accent: #f59e0b;
  --demo-bg: #f8fafc;
  --demo-bg-secondary: #e2e8f0;
  --demo-bg-nav: #0f172a;
  --demo-text: #1e293b;
  --demo-text-light: #f8fafc;
}
```

Then click **Custom (Edit Me)** in the switcher.

When you like the result, map it to Xanthan variables in your theme file:

```css
:root {
  --bg-page: #f8fafc;
  --bg-card: #e2e8f0;
  --bg-nav: #0f172a;
  --text-body: #1e293b;
  --text-on-dark: #f8fafc;
  --accent-primary: #1f6f8b;
  --accent-border: #475569;
  --interactive-hover: #f59e0b;
}
```

---

## AI prompts for palette generation

Use these as copy/paste starters in your AI assistant.

### 1) Generate palette directions

```text
Give me 4 color palette directions for an academic humanities site.
For each direction include: primary, secondary, accent, page background,
card background, nav background, body text, text on dark.
Return hex values and a 1-sentence design rationale.
Avoid neon colors and keep it readable for long-form text.
```

### 2) Convert palette to Xanthan variables

```text
Map this palette into Xanthan semantic CSS variables.
Use exactly these variable names:
--bg-page, --bg-card, --bg-nav, --text-body, --text-on-dark,
--accent-primary, --accent-border, --interactive-hover.
Return a :root block only.

Palette:
primary #______, secondary #______, accent #______,
bg-page #______, bg-card #______, bg-nav #______,
text-body #______, text-on-dark #______
```

### 3) Accessibility tune-up

```text
Review this CSS palette for accessibility.
Identify weak contrast pairs for body text, nav links, and button labels.
Keep the palette mood the same, but suggest minimum-change replacements.
Return revised hex values and explain each change briefly.
```

### 4) Iteration prompt

```text
Take this palette and generate two variants:
1) warmer and more welcoming
2) cooler and more technical
Keep structure and contrast similar.
Return both as Xanthan :root blocks.
```

---

## Other useful comparison targets

If you want this page to be even more rigorous, add demos for:

- inline code inside paragraph text
- blockquote + citation styles
- links in dark backgrounds and hover states
- tag pills/badges (default + active)
- form controls (input, select, placeholder text)
- callout blocks (`section-alt`, `section-warm`, `section-accent`)

These tend to reveal palette weaknesses faster than hero sections do.

## Next steps

After choosing a direction here:

1. Apply it in your theme file.
2. Test on home, docs, and at least one scrollstory page.
3. Validate contrast for body text and nav links.
4. Ask AI for a "minimal-change polish pass" once you have real content on screen.
