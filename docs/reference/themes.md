---
layout: default
title: Themes
---

{% include nav/scrollspy-toc.html %}

# Themes

If you just want to change a few colors or swap a font, [Colors & Fonts](colors-and-fonts) covers that. A theme is the next step: a coherent visual identity that goes beyond individual tweaks.

## What a theme is (and isn't)

In Xanthan, a "theme" is simply a single CSS file that overrides the defaults. There's no theme marketplace, no plugin system, no configuration wizard. You create a `.css` file, put your style overrides in it, and link it in your site's header. That's it.

This is deliberately different from platforms like WordPress or Squarespace, where "theme" means a complex package of templates, scripts, and settings that you install and configure. In Xanthan, the structure of your site---layouts, includes, navigation---stays the same. A theme only changes how things *look*: colors, fonts, spacing, borders, shadows. You're writing CSS, not installing software.

This keeps things transparent and portable:

- All your visual changes live in one file you can read and understand
- Switching looks means commenting out one line and uncommenting another
- The original `base.css` stays intact as a working reference
- Sharing or troubleshooting your design is straightforward---it's just CSS
- You own the design, because you wrote it

## How Themes Work

CSS files load in order, and later files override earlier ones:

1. `base.css` (defaults)
2. `typography.css`, `nav.css`, `cards.css` (component styles)
3. **Your theme file** (overrides everything above)

Your theme file only needs to include what you're changing---everything else is inherited from the defaults.

---

## Option A: Simple Theme (Colors & Fonts Only)

**Best for:** A different palette without changing layout or structure.

Xanthan includes `simple-theme.css` as a starting point. It shows how to define a color palette and map it to semantic variables.

**To create your theme:**

1. Copy `assets/css/themes/simple-theme.css` to `assets/css/themes/my-theme.css`
2. Edit the color values in the `:root` section
3. Activate it in `_config.yml` by adding or setting `theme_css` to the file name without `.css`:
   ```yaml
   theme_css: my-theme
   ```

**Example from simple-theme.css:**

```css
:root {
  /* Your color palette */
  --ocean-blue: #2c5f7c;
  --cloud-white: #f7f9fb;
  --pearl: #e8eef2;

  /* Map to semantic variables */
  --bg-page: var(--cloud-white);
  --accent-primary: var(--ocean-blue);
  --text-body: var(--charcoal);
}
```

The file includes detailed comments explaining each variable.

---

## Option B: Reference-Based Theme (Image to Palette)

**Best for:** Turning a place, object, archive, artwork, or photograph into a coherent visual system.

`canyon-wall.css` shows this approach. It was built from a Grand Canyon wall palette: red stone, dark vegetation, pale granite, trail dust, and shadow gray. The file keeps those colors named, then maps them to Xanthan's semantic variables.

The important design choice is that the visual reference does not take over the site. Canyon red becomes a stratum line---headings, borders, and emphasis. Dark green and shadow gray do the structural work of links, navigation, and body text.

**To use canyon-wall.css:**

1. In `_config.yml`, add or set:
   ```yaml
   theme_css: canyon-wall
   ```
2. Save and refresh

**Example from canyon-wall.css:**

```css
:root {
  /* Named palette */
  --canyon-red: #9f4a35;
  --ponderosa-green: #2f4938;
  --granite-white: #f3efe5;

  /* Semantic roles */
  --bg-page: var(--granite-white);
  --accent-primary: var(--ponderosa-green);
  --accent-border: var(--canyon-red);
}
```

This is the recommended pattern for most custom themes: name your colors first, then decide what job each one performs.

---

## Option C: Advanced Theme (Full Customization)

**Best for:** Changing visual styles beyond colors---typography, navigation, component styling.

Study `dark-energy.css` to see what's possible. It demonstrates:
- Color variable overrides
- Typography customization (sizes, transforms, weights)
- Navigation styling (custom underlines)
- Component theming (cards, buttons, pullquotes)

**To use dark-energy.css:**

1. In `_config.yml`, add or set:
   ```yaml
   theme_css: dark-energy
   ```
2. Save and refresh

**To create your own advanced theme:**

Copy `assets/css/themes/dark-energy.css` as a starting point and modify the element overrides to match your design vision.

---

## Included Themes

**Canyon Wall** (`canyon-wall.css`) - A stronger variable-only theme drawn from Grand Canyon colors. Good for showing how visual references become semantic color systems.

**Terra Cotta** (`terra-cotta.css`) - A warm, earthy simple theme. Good for showing how small variable changes can preserve Xanthan's default structure while shifting mood.

**Simple Theme** (`simple-theme.css`) - A teaching scaffold for creating your own variable-only theme from scratch.

**Dark Energy** (`dark-energy.css`) - An advanced theme that changes variables and adds custom element styling.

Activate any theme by setting `theme_css` in `_config.yml` to the theme file name without `.css`.

## Best Practices

- **Override only what you need** - smaller files are easier to maintain
- **Use the two-tier color system** - named colors + semantic variables
- **Add comments** - explain your design decisions for your future self
- **Test thoroughly** - check all page types with your theme
- **Keep base.css untouched** - preserve it as a fallback

---

## Switching Themes

To switch between themes, edit `_config.yml` and add or change `theme_css`:

- Use `theme_css: canyon-wall` for `assets/css/themes/canyon-wall.css`
- Use `theme_css: dark-energy` for `assets/css/themes/dark-energy.css`
- Leave `theme_css:` blank to use the default Xanthan palette
- Save and refresh

The loading code lives in `_includes/html/html-head.html`, but most users do not need to edit that file.

---

## Troubleshooting

**Theme not showing:**
- Check that `theme_css` exists in `_config.yml` and matches the file name without `.css`
- Confirm the file exists in `assets/css/themes/`
- If you're using a custom `<link>` in `html-head.html`, make sure the path is correct and the link is uncommented

**Some elements unchanged:**
- Your selector might need to be more specific
- Try adding `!important` to the property: `color: var(--teal) !important;`
- Check if another CSS file is overriding your changes

---

## Next Steps

- See [Colors & Fonts](colors-and-fonts) for quick tweaks without a theme file
- Explore [Using AI](../using-ai/) to help build your theme
