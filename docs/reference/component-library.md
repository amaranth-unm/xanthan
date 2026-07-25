---
title: Component Library
layout: default
date: 2026-02-14
---

{% include nav/scrollspy-toc.html %}

# Component Library

Every component in Xanthan, with its parameters and copy-paste code. Drop any of these into a page using the code shown, and the component renders automatically.

---

## Standalone Image

**File:** `images/figure.html`

Places a single centered image in your content, with caption and alt-text. The image sits on its own; whatever follows starts below it. To set an image beside a passage of text, use **Image + Text** (`figure-wrap.html`) below.

```
{% raw %}{% include images/figure.html
  image-width="60%"
  caption="A descriptive caption"
  alt-text="Description for screen readers"
  image-path="/assets/images/photo.jpg"
%}{% endraw %}
```

| Parameter | Required | Default | Options / Notes |
|-----------|----------|---------|-----------------|
| `image-path` | yes | --- | Relative or absolute path to image |
| `image-width` | no | `40%` | Any CSS width value |
| `caption` | no | --- | Supports Markdown |
| `alt-text` | no | uses caption | Accessibility text for screen readers |

---

## Image + Text (figure-wrap)

**File:** `images/figure-wrap.html`

Places an image beside a passage of text as a two-column pair. Nothing floats, so the text stays in its own column and never wraps under the image. This is the recommended way to put an image alongside text. On narrow screens the columns stack, image on top.

```
{% raw %}{% include images/figure-wrap.html
  image-path="/assets/images/photo.jpg"
  image-position="right"
  image-width="45%"
  caption="A descriptive caption"
  alt-text="Description for screen readers"
  text="The text that sits beside the image. Supports **Markdown**."
%}{% endraw %}
```

| Parameter | Required | Default | Options / Notes |
|-----------|----------|---------|-----------------|
| `image-path` | yes | --- | Relative or absolute path to image |
| `text` | yes | --- | Text beside the image; supports Markdown |
| `image-position` | no | `left` | `left` or `right` — which side the image is on |
| `image-width` | no | `40%` | CSS width of the image column |
| `caption` | no | --- | Caption below the image; supports Markdown |
| `alt-text` | no | uses caption | Accessibility text for screen readers |

---

## Jumbotron

**File:** `images/jumbotron.html`

Full-browser-width image that breaks out of the page content margins. Use it as a pure visual break, or add text — the gradient fade is applied automatically so text reads cleanly against the image.

```
{% raw %}{% include images/jumbotron.html
  image-path="/assets/images/backgrounds/pano-1.jpg"
  height="50vh"
  box-align="left"
  text="A pull quote or caption that sits on the clear left side of the image."
  background-position="center right"
  caption="Source: Maxwell Museum of Anthropology."
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `image-path` | yes | --- | Path to image |
| `height` | no | --- | CSS height; e.g. `50vh` |
| `box-align` | no | `left` | `left`, `right`, or `center` — positions text and sets gradient direction |
| `title` | no | --- | Heading above the text |
| `text` | no | --- | Body text; supports Markdown. Gradient applied automatically when present |
| `fade-start` | no | `0%` | Where the opaque background begins |
| `fade-end` | no | `60%` | Where the fade becomes transparent |
| `bg-color` | no | `var(--bg-page)` | Color of the opaque side |
| `background-position` | no | `center` | CSS `background-position`; aim the photo subject away from the text side |
| `zoom` | no | `cover` | CSS `background-size`; e.g. `150%` to zoom in |
| `caption` | no | --- | Caption below the image; supports Markdown |
| `text-shadow` | no | `true` | Set to `false` when text sits on a solid/opaque area rather than busy image detail |

**`box-align` controls both text placement and gradient direction:**

| `box-align` | Text position | Gradient direction |
|-------------|---------------|--------------------|
| `left` (default) | Left side | Left opaque → right transparent |
| `right` | Right side | Right opaque → left transparent |
| `center` | Centered over image | No gradient; text shadow used for legibility |

No `text` or `title`? The gradient is omitted — the include renders as a clean full-width image break.

---

## Before/After Slider

**File:** `images/juxtapose.html`

Draggable slider for comparing two images. Uses the [Juxtapose](https://juxtapose.knightlab.com/) library.

```
{% raw %}{% include images/juxtapose.html
  image1="/assets/images/before.jpg"
  image2="/assets/images/after.jpg"
  alt-text-left="Description of the before image"
  alt-text-right="Description of the after image"
  caption="Before and after renovation."
  starting-position="50%"
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `image1` | yes | --- | Left image path |
| `image2` | yes | --- | Right image path |
| `caption` | no | --- | Caption below slider |
| `starting-position` | no | `50%` | Initial slider position |
| `alt-text-left` | no | uses caption | Accessibility description for left image |
| `alt-text-right` | no | uses caption | Accessibility description for right image |

---

## Image Carousel

**File:** `images/carousel.html`

Slideshow of multiple images with optional titles and captions. Requires pre-defined lists.

```
{% raw %}{% assign images =
"/assets/images/photo-1.jpg,
/assets/images/photo-2.jpg,
/assets/images/photo-3.jpg" | split: ','
%}

{% assign headers =
"First Title,,Third Title" | split: ','
%}

{% assign captions =
"Caption for first image|
Caption for second image|
" | split: '|'
%}

{% assign alt_texts =
"Description of first image|
Description of second image|
Description of third image" | split: '|'
%}

{% include images/carousel.html
  width="80%"
  class="center"
  images=images
  headers=headers
  captions=captions
  alt-texts=alt_texts
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `images` | yes | --- | Pre-assigned list of image paths (comma-separated) |
| `headers` | no | --- | Slide titles (comma-separated; use empty values to skip) |
| `captions` | no | --- | Slide captions (pipe-separated to allow commas in text) |
| `alt-texts` | no | uses caption or header | Image descriptions (pipe-separated) |
| `width` | no | `100%` | CSS width |
| `class` | no | `center` | `left`, `center`, `right` |
| `id` | no | `carouselExample` | Unique ID (required for multiple carousels on one page) |

---

## Alert Box

**File:** `typography/alert.html`

Colored callout box for tips, warnings, or important information.

```
{% raw %}{% include typography/alert.html
  class="info"
  title="Note"
  text="Your message here. **Markdown** is supported."
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `class` | no | `info` | `info` (blue), `warning` (yellow), `danger` (red), `success` (green) |
| `text` | yes | --- | Alert content; supports Markdown |
| `title` | no | --- | Bold heading at top of alert |

---

## Pull Quote

**File:** `typography/pullquote.html`

A centered callout that highlights a key passage from your text. Good for drawing attention to a memorable phrase or key argument.

```
{% raw %}{% include typography/pullquote.html
  text="The interesting thing about this approach is that it challenges conventional assumptions."
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `text` | yes | --- | Quote content; supports Markdown |
| `width` | no | `70%` | CSS width override |

For quoted source material, use Markdown blockquotes with `>` and style the resulting `blockquote` element in `assets/css/typography.css`.

---

## Audio Player

**File:** `media/audio.html`

HTML5 audio player. See [Media](../editing/media) for details on hosting audio files.

```
{% raw %}{% include media/audio.html
  src="/assets/audio/interview.mp3"
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `src` | yes | --- | Path to audio file (MP3, WAV, OGG) |

---

## Scrollspy Table of Contents

**File:** `nav/scrollspy-toc.html`

Floating sidebar that auto-generates a table of contents from all `h2` headings on the page. Highlights the current section as the reader scrolls.

```
{% raw %}{% include nav/scrollspy-toc.html %}{% endraw %}
```

No parameters. Place near the top of your page content (after front matter). On mobile, it collapses to a static block above the content.

---

## Card: Table of Contents

**File:** `cards/card-toc.html`

Renders a list of compact, text-focused cards from a set of pages.

```
{% raw %}{% assign card_pages = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include cards/card-toc.html rows = card_pages %}{% endraw %}
```

| Parameter | Required | Notes |
|-----------|----------|-------|
| `rows` | yes | A Liquid-assigned collection of pages |

Pages should have `title`, `author`, and `summary` in their front matter for best results. Add `position: 1`, `position: 2`, etc. to control sort order.

---

## Card: Compact List

**File:** `cards/card-toc-compact.html`

Smaller, text-only cards stacked vertically---more compact than `card-toc.html` and better suited for long lists or documentation indexes. Shows title, summary, and an optional `topics` list as sub-bullets.

```
{% raw %}{% assign card_pages = site.pages | where_exp: "page", "page.path contains 'docs/'" %}

{% include cards/card-toc-compact.html rows = card_pages %}{% endraw %}
```

| Parameter | Required | Notes |
|-----------|----------|-------|
| `rows` | yes | A Liquid-assigned collection of pages |

Pages should have `title` and `summary` in their front matter. Add `position: 1`, `position: 2`, etc. to control sort order. Optional `topics:` list in front matter renders as sub-bullets under the summary.

---

## Card: Stacked

**File:** `cards/card-stack.html`

Wide horizontal cards with larger images, stacked vertically.

```
{% raw %}{% assign stacked_cards = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include cards/card-stack.html cards = stacked_cards %}{% endraw %}
```

| Parameter | Required | Notes |
|-----------|----------|-------|
| `cards` | yes | A Liquid-assigned collection of pages |
| `card-class` | no | Additional CSS class added to each card |

Cards sort by `position` front matter if present. Pages without `position` appear last.

---

## Card: Grid

**File:** `cards/card-grid.html`

Traditional card grid layout with balanced text and images.

```
{% raw %}{% assign stories = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include cards/card-grid.html cards = stories %}{% endraw %}
```

| Parameter | Required | Notes |
|-----------|----------|-------|
| `cards` | yes | A Liquid-assigned collection of pages |

Cards sort by `position` front matter if present. Pages without `position` appear last.

---


## Gallery Grid

**File:** `nav/gallery-grid.html`

Image-first navigation for collections. Use it when readers are choosing among pages by looking first: project galleries, visual archives, place collections, or exhibit-style indexes.

```
{% raw %}{% assign gallery_pages = site.pages | where_exp: "page", "page.path contains 'projects/'" %}

{% include nav/gallery-grid.html
  items = gallery_pages
  variant = "mosaic"
  show-summary = false
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `items` | yes | --- | A Liquid-assigned collection of pages or data objects |
| `variant` | no | `mosaic` | `mosaic` gives varied tile sizes; `uniform` keeps all tiles equal |
| `min-width` | no | `180px` | Minimum tile width before the grid wraps |
| `gap` | no | `var(--spacing-xs)` | Space between tiles |
| `image-field` | no | `thumbnail` | Front matter field to use for images |
| `show-title` | no | `true` | Show titles over images |
| `show-summary` | no | `false` | Show summaries over images |
| `class` | no | --- | Additional CSS class on the gallery wrapper |

Items should have `title`, `thumbnail`, and either `url` or `link`. If an item does not have an image, Xanthan renders a visible warning so the missing field is easy to find.

---

## Interactive Map

**File:** `nav/map.html`

Leaflet-based map that auto-generates markers from pages with `geo` front matter.

```
{% raw %}{% include nav/map.html
  height="600px"
  width="100%"
  start_coords="[39.8283, -98.5795]"
  zoom=4
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `height` | no | `700px` | CSS height |
| `width` | no | `100%` | CSS width |
| `start_coords` | no | `[44.967, -103.767]` | Initial center `[lat, lng]` |
| `zoom` | no | `4` | Zoom level 1--18 |
| `id` | no | `map` | Unique ID for multiple maps |

Pages appear as markers when they have `geo: [lat, lng]` in their front matter. Optional fields: `placename`, `summary`, `header-image`.

---

## Breadcrumbs

**File:** `nav/breadcrumbs.html`

Auto-generated navigation trail based on the page's URL path.

```
{% raw %}{% include nav/breadcrumbs.html %}{% endraw %}
```

No parameters. Renders a trail like: Home > Section > Page.

---

## Feature Row

**File:** `layout/feature-row.html`

A horizontal row with text and a button link. Useful for landing pages or feature lists.

```
{% raw %}{% include layout/feature-row.html
  title="Explore Projects"
  text="See what students have built with Xanthan."
  link="/projects/"
  button="View Projects"
  text-width="50"
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `title` | yes | --- | Heading text |
| `text` | yes | --- | Description text |
| `link` | yes | --- | Button destination URL |
| `button` | no | uses `title` | Button label |
| `text-width` | no | `50` | Percentage width of text area |

---

## Page Header (via front matter)

**File:** `layout/page-header.html`

Called automatically by the page layout when `header-image` is in the front matter. You don't call it directly — just add fields to your page. Three tiers control the header's visual weight; five filter modes transform how the background image appears.

```yaml
---
header-image: /assets/images/backgrounds/canyon.jpg
header-tier: section
header-filter: photo
header-title: River Crossings
header-position: center right
---
```

**Tier** controls height and text layout:

| `header-tier` | Height | Text elements |
|---------------|--------|---------------|
| `hero` | 100vh | eyebrow, title, divider, subtitle |
| `section` | 60vh | title only |
| `banner` | 22vh | title only, sans-serif |

**Filter** transforms the background image:

| `header-filter` | Best for |
|-----------------|----------|
| `photo` | Color photos (default) |
| `botanical` | Line-art engravings, dark lines on white background |
| `sketch` | Faint line drawings (boosts contrast before inverting) |
| `woodcut` | Historical color images; preserves natural color |
| `etching` | Photos → high-contrast silhouette |

**All front matter fields:**

| Field | Default | Notes |
|-------|---------|-------|
| `header-image` | --- | Path to image (required to trigger header) |
| `header-tier` | `hero` | `hero`, `section`, or `banner` |
| `header-filter` | `photo` | See filter table above |
| `header-title` | --- | Title text overlaid on image |
| `header-eyebrow` | --- | Small caps line above title (hero only) |
| `header-subtitle` | --- | Paragraph below title (hero only) |
| `header-divider` | --- | Text between decorative lines (hero only) |
| `header-position` | `center right` | CSS `background-position` value |
| `header-opacity` | tier default | Override image opacity (0–1) |
| `header-zoom` | `cover` | CSS background-size; e.g. `150%` to zoom in |
| `header-height` | tier default | CSS height override; e.g. `60vh` |

---

## Peekaboo Background

**File:** `scrollybox/bg.html`

A fixed background image that is revealed as page content scrolls over it, creating a parallax-like effect. Optionally adds a text box that scrolls past the image.

```
{% raw %}{% include scrollybox/bg.html
  height="100vh"
  image-path="/assets/images/backgrounds/pano-1.jpg"
  box-content="Text that scrolls past the image."
  above-box-space="50vh"
  below-box-space="50vh"
  box-align="right"
%}{% endraw %}
```

| Parameter | Required | Default | Notes |
|-----------|----------|---------|-------|
| `image-path` | yes | --- | Path to image |
| `height` | no | `40vh` | CSS height of the background section |
| `box-content` | no | --- | Text to scroll past the image; supports Markdown |
| `above-box-space` | no | --- | Space above the text box (e.g. `50vh`) |
| `below-box-space` | no | --- | Space below the text box |
| `box-align` | no | `center` | `left`, `right`, or `center` — horizontal position of text box |

---

## ScrollStory components

The `scrollybox/` directory contains additional includes for building ScrollStory narratives. These are documented in the [ScrollStories](../scrollstories/) section.

All scrollybox includes that display a text box support the `box-align` parameter (`left`, `right`, `center`):

| Include | Purpose |
|---------|---------|
| `scrollybox/bg.html` | Revealed background + optional scrolling text box |
| `scrollybox/bg-sticky.html` | Background stays fixed while text scrolls over it |
| `scrollybox/bg-multi-long.html` | Multiple background sections in sequence |
| `scrollybox/bg-switch.html` | Switch background images as the reader scrolls |
| `scrollybox/auto-scroll.html` | Side-scrolling text panels |

See the [ScrollStory examples](../scrollstories/) for these components in action.
