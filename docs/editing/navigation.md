---
title: Navigation
layout: xanthan
date: 2026-02-14
example_cards:
  - title: "River Systems and Settlement"
    summary: "How waterways shaped the geography of early towns along the Rio Grande."
    link: "#"
    position: 1
  - title: "Acequia Landscapes"
    summary: "Community irrigation networks and their role in shaping land use patterns."
    link: "#"
    position: 2
  - title: "Mining Towns and Their Aftermath"
    summary: "The boom-and-bust cycles that defined the built environment of the mountain West."
    link: "#"
    position: 3
---

{% include nav/scrollspy-toc.html %}

# Navigation

As a site grows beyond a handful of pages, navigation becomes an argument about what matters and how things relate. Xanthan provides several navigation systems---from a top menu bar to auto-generated card directories to interactive maps---and you can combine them freely. A class project might use a top navbar for site-wide structure, cards on a landing page, a left sidebar for browsing essays, and a map for geographic context.

---

## Top navigation bar

The horizontal menu at the top of every page is controlled by a single YAML file: `_data/top-nav.yml`. No HTML, no coding---just a structured list of titles and URLs.

### Basic structure

```yaml
- title: "About"
  url: "/about"

- title: "Research"
  items:
    - title: "Overview"
      url: "/research/"
    - title: "Current Projects"
      url: "/research/current"
    - title: "Publications"
      url: "/publications"

- title: "Contact"
  url: "/contact"
```

This creates three menu entries: a direct link to About, a Research dropdown with three items, and a direct link to Contact.

### Two types of menu items

**Dropdown menus** group related pages under a label:

```yaml
- title: "Research"
  items:
    - title: "Overview"
      url: "/research/"
    - title: "Publications"
      url: "/publications"
```

**Direct links** go straight to a page with no dropdown:

```yaml
- title: "About"
  url: "/about"
```

### Adding dividers

Horizontal lines inside a dropdown help organize long menus:

```yaml
- title: "Content"
  items:
    - title: "Typography"
      url: "/editing/typography"
    - title: "Images"
      url: "/editing/images"

    - divider: true

    - title: "Previewing Locally"
      url: "/editing/previewing-locally"
```

### Common tasks

**Add a link to an existing menu** --- just add another `- title:` / `url:` pair under `items:`, matching the indentation (4 spaces):

```yaml
- title: "Research"
  items:
    - title: "Overview"
      url: "/research/"
    - title: "Datasets"
      url: "/datasets"
```

**Create a new dropdown** --- add a new top-level entry with `items:`:

```yaml
- title: "Teaching"
  items:
    - title: "Courses"
      url: "/teaching/courses"
    - title: "Advising"
      url: "/teaching/advising"
```

**Remove a menu** --- delete the entire block, from `- title:` through all its `items:`.

**Rename a menu** --- just change the `title:` text. The URL stays the same.

### URL guidelines

For pages on your site, always start with `/`:

```yaml
url: "/about"              # Correct
url: "/guides/tutorial"    # Correct
url: "about"               # Wrong - missing /
url: "about.md"            # Wrong - don't include .md
```

For external sites, use the full URL:

```yaml
url: "https://github.com/your-project"
```

URLs map directly to your file structure: `guides/tutorial.md` becomes `/guides/tutorial`. Folders with an `index.md` use a trailing slash: `projects/index.md` becomes `/projects/`.

### YAML syntax reminders

- **Indentation matters.** Use spaces, not tabs. Items under `items:` should be indented exactly 4 spaces.
- **Quotes are safer.** Always quote titles and URLs to avoid issues with special characters.
- **Space after colons.** `title: "Text"` works; `title:"Text"` breaks.

If your navigation disappears after an edit, paste your file into a [YAML validator](https://www.yamllint.com/) to spot syntax errors.

### Complete example

```yaml
- title: "About"
  url: "/about"

- title: "Research"
  items:
    - title: "Overview"
      url: "/research/"
    - title: "Current Projects"
      url: "/research/current"
    - title: "Publications"
      url: "/publications"

- title: "Teaching"
  items:
    - title: "Courses"
      url: "/teaching/courses"
    - title: "Advising"
      url: "/teaching/advising"

- title: "Contact"
  url: "/contact"
```

---

## Card-based navigation

Cards turn any page into a visual directory. Each card shows a title, summary, optional image, and a link. Use cards for essay indexes, project galleries, reading lists, or any collection where readers need to browse before they dive in.

Cards have two distinct sources---pages gathered automatically from a folder, or data you define directly in the page's front matter---and the choice shapes how you manage the directory.

### Card styles

Xanthan includes four card layouts. Each is called the same way: assign a list, pass it to an include. What changes is the include name and the visual result.

#### TOC cards

Compact, text-only rows with title, summary, and a right-arrow. Clean and fast for long lists. Best when images aren't essential---a reading list, a document index, a section TOC.

```
{% raw %}{% assign card_pages = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include nav/card-toc.html rows = card_pages %}{% endraw %}
```

{% assign card_pages = site.pages | where_exp: "page", "page.path contains 'scrollstories/examples'" %}

{% include nav/card-toc.html rows = card_pages %}

#### Stack cards

Wide horizontal cards with an image on the left and text on the right, stacked vertically. Good for featured collections where images help readers recognize items before clicking.

```
{% raw %}{% assign stacked_cards = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include nav/card-stack.html cards = stacked_cards %}{% endraw %}
```

{% assign stacked_cards = site.pages | where_exp: "page", "page.path contains 'scrollstories/examples'" %}
{% include nav/card-stack.html cards = stacked_cards %}

#### Grid cards

A grid of vertical cards with the image on top. Works well when images are the primary way readers identify items, or when you want the directory to feel like a gallery.

```
{% raw %}{% assign stories = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include nav/card-grid.html cards = stories %}{% endraw %}
```

{% assign essays = site.pages | where_exp: "page", "page.path contains 'scrollstories/examples'" %}
{% include nav/card-grid.html cards = essays %}

---

### From a folder

The most common approach: automatically collect all pages from a folder, and let each page's own front matter supply the card content. As you add or edit pages in the folder, the card directory updates on its own---no maintenance required.

```
{% raw %}{% assign card_pages = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include nav/card-toc.html rows = card_pages %}{% endraw %}
```

Change `essays/` to whatever folder your pages live in. `where_exp` collects every page whose path contains that string---so `essays/` would match `essays/river-towns.md`, `essays/acequia.md`, and so on. It won't match pages outside that folder.

Each collected page contributes its own front matter to its card. A well-equipped page might look like:

```yaml
---
title: River Towns
author: Carlos Medina
summary: How waterways shaped the geography of early towns along the Rio Grande.
thumbnail: images/river-card.jpg
position: 1
tags:
  - settlement
  - water
---
```

Cards draw from `title`, `summary`, `thumbnail`, `position`, `tags`, and `link` (or `url`). You don't configure the cards---you configure the pages.

---

### From your page's front matter

Sometimes you want cards for things that don't correspond to individual pages---external links, curated reading lists, items from a mixed collection. Or you want precise control over what appears and in what order without creating a page for each entry. In these cases, define the card data directly in the front matter of the directory page itself.

```yaml
---
title: Readings
layout: xanthan
cards:
  - title: "The River's Edge"
    summary: "An introduction to riparian ecology and its role in human settlement."
    link: https://example.com/article
    position: 1
  - title: "Water Law in the West"
    summary: "How prior appropriation doctrine shaped the American Southwest."
    link: /readings/water-law
    position: 2
  - title: "Acequia Communities"
    summary: "Oral histories from acequia parciantes in northern New Mexico."
    link: /readings/acequias
    position: 3
---
```

Then in the page body, assign that front matter list to a variable and pass it to a card include:

```
{% raw %}{% assign my_cards = page.cards %}
{% include nav/card-toc.html rows = my_cards %}{% endraw %}
```

This works with any card style---swap `card-toc.html` for `card-stack.html` or `card-grid.html` as needed.

Here is a live example using data defined in this page's own front matter:

{% assign example_cards = page.example_cards %}
{% include nav/card-toc.html rows = example_cards %}

---

### Front matter fields for cards

These fields are read from each page or data item to populate the card:

| Field | Used by | What it does |
|-------|---------|--------------|
| `title` | All | Required. The card heading. |
| `summary` | All | Short description shown below the title. Stack and Grid also try `description`, then auto-excerpt. |
| `thumbnail` | Stack, Grid | Path to the card image. |
| `position` | All | Sort order. Lower numbers appear first. |
| `tags` | Stack, Grid | Tag pills displayed at the bottom of the card. |
| `link` | All | Override the link URL. Useful for external links or custom paths. If absent, uses `url`. |

---

### Include parameters

**`card-toc.html`** --- TOC rows (text only, no images):

| Parameter | What it does |
|-----------|--------------|
| `rows` | The list of page or data objects to display |

**`card-stack.html`** --- Horizontal image-left cards:

| Parameter | Default | What it does |
|-----------|---------|--------------|
| `cards` | (required) | The list of page or data objects to display |
| `show-tags` | `true` | Whether to show tag pills on each card |
| `tag-data` | `false` | Add `data-tags` attributes for JavaScript tag filtering |

**`card-grid.html`** --- Vertical image-top grid:

| Parameter | Default | What it does |
|-----------|---------|--------------|
| `cards` | (required) | The list of page or data objects to display |
| `show-tags` | `true` | Whether to show tag pills on each card |
| `tag-data` | `false` | Add `data-tags` attributes for JavaScript tag filtering |
| `grid-class` | — | Additional CSS class on the grid wrapper |

---

## Left sidebar navigation

The left sidebar provides persistent navigation for all pages in a folder, visible while reading any page in that section. Useful for course projects, documentation, or any collection where readers need to jump between related pages.

**[See the left nav demo](../navigation/nav-left-demo)** to see this layout in action.

### Setting it up

**1.** Set the layout in each page's front matter:

```yaml
---
layout: nav-left
title: Your Page Title
---
```

**2.** Define navigation sections in `_data/nav-sections.yml`:

```yaml
sections:
  - name: essays
    display: "Student Essays"
  - name: resources
    display: "Resources"
```

**3.** Assign pages to sections using `toc-section` and `order`:

```yaml
---
layout: nav-left
title: River Towns
toc-section: essays
order: 3
---
```

Pages are automatically grouped by `toc-section` and sorted by `order`.

### Customization

Edit `assets/css/nav-left.css` to change sidebar width (default: 25vw), colors, fonts, or spacing.

### File structure

```
_layouts/nav-left.html          # Layout template
_data/nav-sections.yml          # Section configuration
assets/css/nav-left.css         # Sidebar styling
_includes/nav/nav-left.html     # Navigation component
```

---

## Profile sidebar

The profile sidebar layout displays a personal card on the left---photo, name, bio, and links---with page content on the right. Ideal for personal portfolio sites.

**[See the profile sidebar demo](../navigation/nav-profile-demo)** to see this layout in action.

### Setting it up

Set the layout in your page's front matter:

```yaml
---
layout: nav-profile
title: Your Page Title
---
```

Configure the sidebar in `_data/nav-profile.yml`:

```yaml
settings:
  links_font_weight: normal

image_url: /assets/images/profile/profile-sample.jpg
alt_text: "Description of your photo"
name: Your Name
description: A brief bio or tagline

links:
  - title: Website
    url: https://example.com
    icon: fas fa-globe
  - title: GitHub
    url: https://github.com/username
    icon: fab fa-github
  - title: Email
    url: mailto:you@example.com
    icon: fas fa-envelope
```

### Common icons

The sidebar uses [Font Awesome](https://fontawesome.com/icons) icons:

| Icon | Code |
|------|------|
| Website | `fas fa-globe` |
| GitHub | `fab fa-github` |
| Email | `fas fa-envelope` |
| Twitter/X | `fab fa-twitter` |
| LinkedIn | `fab fa-linkedin` |
| ORCID | `fab fa-orcid` |
| University | `fas fa-university` |

---

## Interactive maps

The map component automatically displays markers for any page with geographic coordinates. Clicking a marker shows the page title, summary, and a link.

### Adding a page to the map

Include `geo` and (optionally) `placename` in the page's front matter:

```yaml
---
title: Seedling
geo: [37.88, -81.08]
placename: New River Gorge National Park
summary: Perfect for beginners getting comfortable with digital essays.
header-image: images/seedling-card.png
---
```

### Displaying a map on a page

```
{% raw %}{% include nav/map.html
  height="600px"
  width="100%"
  start_coords="[39.8283, -98.5795]"
  zoom=4
%}{% endraw %}
```

| Parameter | Default | What it does |
|-----------|---------|--------------|
| `id` | `"map"` | Unique ID (needed for multiple maps on one page) |
| `height` | `700px` | CSS height |
| `width` | `100%` | CSS width |
| `start_coords` | `[44.967, -103.767]` | Initial center point as `[lat, lng]` |
| `zoom` | `4` | Initial zoom level (1--18, higher = closer) |

### Finding coordinates

1. Open [Google Maps](https://maps.google.com)
2. Right-click on the location
3. Click the coordinates at the top of the menu to copy them
4. Use the format `[lat, lng]` in your front matter

### Zoom level guide

| Level | View |
|-------|------|
| 4--6 | Country or region |
| 10--14 | City |
| 15--18 | Street level |

---

## Scrollspy table of contents

For long pages, a scrollspy table of contents creates a floating sidebar that tracks your reading position. It automatically generates links from all `h2` headings on the page.

```
{% raw %}{% include nav/scrollspy-toc.html %}{% endraw %}
```

Add this line near the top of your page content (after the front matter). The TOC will appear as a sticky panel on the right side of the page, highlighting the current section as you scroll.

---

## Breadcrumbs

Breadcrumbs show the current page's location in the site hierarchy:

```
{% raw %}{% include nav/breadcrumbs.html %}{% endraw %}
```

This renders a trail like: Home > Research > Current Projects

---

## Mixing navigation types

These systems are modular---use them together. A typical class project might combine:

- **Top nav** for site-wide structure (always visible)
- **Left sidebar** on essay pages for quick navigation between student work
- **Cards** on a landing page for a visual directory
- **Map** to show geographic distribution of topics

The top nav is site-wide (controlled by `top-nav.yml`). Everything else is page-level---add or remove it from individual pages as needed.
