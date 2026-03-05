---
title: Forest
author: Fred Gibbs
layout: scrollstory
date: 2025-07-21
thumbnail: images/forest.jpg
summary: The kitchen sink of demos. This essay showcases every ScrollStory component — background switching, sticky backgrounds, side-scroll sections, juxtapose comparisons, and more.
header-image: images/sebastian-unrau-sp-p7uuT0tw-unsplash.jpg
header-title: The Forest
header-eyebrow: ScrollStory Demo
header-divider: ✦ ✦ ✦
header-subtitle: every component, one essay
header-caption: Photo by <a href="https://unsplash.com/@sebastian_unrau">Sebastian Unrau</a> on <a href="https://unsplash.com">Unsplash</a>
header-position: 0px
toc-section: piano
autoscroll: true

geo: [44.600000, -110.500000]
placename: Yellowstone National Park
tags:
  - music
---

# A Forest Essay
This essay demonstrates **advanced ScrollStory features**—everything from Seedling and Sapling, plus background image switching, sticky backgrounds, side-scroll sections, juxtapose comparisons, and the full header system. This is the complete cinematic experience.

**What makes this a "Forest" essay?** It includes every component Xanthan offers. Use this when you want maximum storytelling power — or as a reference to copy specific component code into your own essays.

Notice the header above: it includes an **eyebrow** ("ScrollStory Demo"), a **divider** (the decorative line of symbols), and a **subtitle** below the title. These hero-only fields are set in the front matter:

```yaml
header-eyebrow: ScrollStory Demo
header-divider: ✦ ✦ ✦
header-subtitle: every component, one essay
```


## Auto-scroll: demo mode

This essay has `autoscroll: true` in its front matter, which enables a hands-free scrolling mode useful for demos, recordings, and GIFs. Press **P** to start auto-scrolling; press **P** again to pause. Scrolling manually, pressing **Escape**, or using arrow keys also pauses it.

Auto-scroll is off by default on all pages. To enable it, add `autoscroll: true` to a page's front matter. Remove the line (or set it to `false`) to disable it.


## All the Basics Still Work
{% capture firstimage %}
Forest doesn't replace Seedling or Sapling—it **includes** them. You can mix simple images, footnotes, and section headings with the advanced features we're about to show you.

The key to Forest essays is knowing when to use which tool. Not every moment needs a cinematic treatment. Sometimes a simple image alongside text is exactly right.
{% endcapture %}
{% include images/figure-wrap.html
  image-position="right"
  image-width="48%"
  caption="Ferns on the forest floor. Simple figure-wrap, right-aligned at 48%."
  image-path="images/ferns-closeup.jpg"
  text=firstimage
%}


## Standalone Figures: Three Styles

The standalone `figure.html` can float left, right, or center:

{% include images/figure.html
  class="left"
  width="40%"
  caption="Left-floated figure at 40% width."
  image-path="images/moss-log.jpg"
%}

This text wraps to the right of the left-floated moss image. Notice how the flow changes when an image is on the left vs. the right — readers encounter the image first, then the text, which can draw attention to the image more immediately.

Nunc congue ultrices lacus, a efficitur massa pulvinar at. Sed luctus orci sed sem commodo, in rhoncus orci sagittis. Duis in sagittis arcu. Donec dictum aliquam congue.

<p style="clear:both"></p>

{% include images/figure.html
  class="center"
  width="70%"
  caption="A centered standalone figure at 70% width — good for images that need room to breathe."
  image-path="images/green-leaves.jpg"
%}


## Juxtapose: Before/After Comparisons
Below you'll see a **juxtapose component**—an interactive slider that lets readers compare two images by dragging a handle left and right.

{% include images/juxtapose.html
  image1="images/misty-forest.jpg"
  image2="images/forest-floor-light.jpg"
  starting-position="35%"
  caption="Drag the slider to compare two forest scenes — mist vs. dappled light. The starting position is set to 35% so readers see more of the second image initially."
%}

**Why use juxtapose?** When you want readers to actively explore the relationship between two images. The interactive slider invites engagement—readers control what they see.

**Use cases:** Historical photos showing change over time, different views of the same location, comparing maps or documents, revealing differences that might be subtle.

The `starting-position="35%"` shifts the slider so readers don't start at the default 50/50 split.


## A Left-Aligned Figure-Wrap
{% capture leftimage %}
Figure-wraps work on both sides. This **left-aligned** image creates a different visual rhythm from the right-aligned wraps you've seen. Alternating sides throughout a long essay keeps readers' eyes moving and prevents layout monotony.

Use left-aligned images when the visual subject faces right (leading the eye into the text) or when you want to break a pattern of right-aligned images.
{% endcapture %}
{% include images/figure-wrap.html
  image-position="left"
  image-width="45%"
  caption="Mountain stream — a left-aligned figure-wrap at 45% width."
  image-path="images/mountain-stream.jpg"
  text=leftimage
%}


## Alert Box: Warning Style

{% include typography/alert.html
  class="warning"
  title="Advanced territory ahead"
  text="The components below this point — sticky backgrounds, background switching, and side-scroll — are the most complex in Xanthan. They're powerful but require careful attention to opening/closing tags and parameter values. Copy the code snippets exactly and adjust from there."
%}


## Sticky Background

The **sticky background** is similar to a scrollybox but uses CSS `position: sticky` instead of `background-attachment: fixed`. The visual effect is subtly different — the image scrolls *with* you until it reaches the top of the viewport, then sticks while content continues past it.

{% include scrollybox/bg-sticky.html
  image-path="images/misty-forest.jpg"
  height="100vh"
  above-box-space="50vh"
  below-box-space="80vh"
  box-align="right"
  box-content="
**Sticky background with right-aligned text box.**

This component works like the scrollybox from Sapling, but uses a different CSS technique. The image feels more grounded — it moves with the page before locking into place.

Use `bg-sticky` when:
- You want the image to arrive with the scroll rather than being revealed behind content
- You need more reliable behavior on mobile devices
- The sticky \"lock-in\" moment adds to your narrative
"
%}


## Center-Aligned Pull Quote

{% include typography/pullquote.html
  box-align="center"
  width="70%"
  text="A center-aligned pull quote at 70% width creates a visual pause that spans nearly the full text column. Use this for the single most important statement in your essay."
%}

The pull quote above uses `box-align=\"center\"` and `width=\"70%\"` — wider and more prominent than the left- or right-aligned versions you saw in Seedling and Sapling. Reserve center-aligned quotes for your most important ideas.


## Jumbotron With Right-Aligned Text

{% include images/jumbotron.html
  image-path="images/autumn-forest.jpg"
  height="60vh"
  box-align="right"
  title="Autumn Canopy"
  text="A jumbotron with `box-align=\"right\"` — the gradient fades from right to left, keeping the text readable against the image."
  background-position="center"
  caption="Sapling demonstrated a left-aligned jumbotron. Here we use the right side to show how `box-align` controls both text placement and gradient direction."
%}


## Blockquote Include

In Seedling, you saw Markdown's `>` syntax for block quotes. Xanthan also has a **blockquote include** that gives you alignment control:

{% include typography/blockquote.html
  box-align="left"
  text="The forest floor receives only 2% of the sunlight that hits the canopy. What grows there has adapted to work with almost nothing — and yet the understory is where most of the forest's biodiversity lives."
%}

The `box-align` parameter accepts `left`, `right`, or `center` (default). This left-aligned version creates a different visual texture from standard centered block quotes.


## Standard Scrollybox (From Sapling)
The next section uses a basic scrollybox like you saw in Sapling. Keep scrolling to see text overlay a full-screen background image.

{% include scrollybox/bg.html
  height="320vh"
  image-path="images/tree-canopy-up.jpg"
  above-box-space="100vh"
  below-box-space="120vh"
  box-align="right"
  box-content="
**Looking up through the canopy** — this scrollybox is right-aligned, using `box-align: right`.

All the same Markdown works here — and this is the same component you saw in Sapling. Forest essays use it freely alongside advanced features.

Use `above-box-space` and `below-box-space` to control pacing — more space means slower, more contemplative scrolling.
"
%}


## Background Switching: Multiple Images
This is what makes Forest essays truly cinematic. You're about to scroll through a section where the background image **switches multiple times** as you read, creating a visual sequence that matches your narrative.

**Watch carefully:** The background starts with one image, then switches to a second, then a third. The text box stays visible throughout.

{% include scrollybox/bg-multi-long.html
  bg-id="forest-bg"
  image-path="images/forest-floor-light.jpg"
  above-box-space="0"
%}

The first image — dappled light on the forest floor. This multi-section scrollybox opens with `bg-multi-long.html`, which sets the initial background. Content between here and the `bg-multi-long-close.html` tag appears in a text box that scrolls over the changing backgrounds.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec ante ligula. Nulla fringilla ligula sit amet nisl consectetur ultricies. Mauris ac tellus eu ante lobortis rhoncus non eu nisl.


### SWITCH: Moss and Bark

{% include scrollybox/bg-switch.html
  image-path="images/moss-log.jpg"
  switch-id="forest-switch1"
  bg-id="forest-bg"
%}

The background just switched to moss on a log. Each `bg-switch` tag triggers a new background image when the reader scrolls past it. You can chain as many switches as your narrative needs.

Duis ut dui dolor. Integer eu lectus at tellus accumsan euismod eget a ligula. Morbi venenatis, elit eu varius fermentum, ligula est dictum massa, sit amet ullamcorper augue nisl ut nunc.


### SWITCH: Looking Up

{% include scrollybox/bg-switch.html
  image-path="images/tree-canopy-up.jpg"
  switch-id="forest-switch2"
  bg-id="forest-bg"
%}

Now the canopy — three layers of the forest shown through three background switches. This technique works for:
- Spatial narratives (moving through a building, landscape, or archive)
- Temporal sequences (before, during, after)
- Evidence building (presenting multiple sources for one argument)
- Scale shifts (close-up → medium → wide)

Duis eros odio, fringilla et pulvinar vitae, eleifend quis elit. Sed eleifend lectus in bibendum elementum. Watch as the text box scrolls out of view, followed by the background fading away.

{% include scrollybox/bg-multi-long-close.html %}


## Back to Normal Flow
Notice how smoothly you transitioned from that immersive multi-image sequence back to regular essay format? Mixing intense and calm sections creates the rhythm that makes Forest essays compelling.


## Side-Scroll Section

The **side-scroll** component creates a different reading pattern: images appear inline with your text, breaking the vertical flow with full-width visuals.

{% include scrollybox/bg-ss.html
  ss-id="forest-walk"
  pre-box-space="10"
%}

We begin in the understory. The light here is filtered through layers of leaves above, creating patterns on the forest floor. Every surface harbors life — fungi breaking down fallen wood, mosses covering rocks, insects navigating root systems.

Side-scroll sections alternate between text blocks and full-width images, letting you pace your visual narrative differently from scrollyboxes.

{% include scrollybox/bg-ss-image.html
  ss-id="forest-walk"
  image-path="images/ferns-closeup.jpg"
  alt-text="Close-up of ferns on the forest floor"
%}

Ferns unfurl from tight spirals called fiddleheads — one of the oldest plant forms on Earth, predating flowering plants by hundreds of millions of years. They thrive in the shade that would starve most other plants.

This is the second text block in the side-scroll section. Each `bg-ss-image` inserts an image and starts a new text block. You can chain as many image-text pairs as you need.

{% include scrollybox/bg-ss-image.html
  ss-id="forest-walk"
  image-path="images/moss-log.jpg"
  alt-text="Moss growing on a fallen log"
%}

A fallen tree becomes a nurse log — decomposing over decades, feeding the soil, hosting new seedlings on its surface. Nothing in a forest is wasted. The side-scroll pattern works well for this kind of sequential observation: walk, look closely, reflect, walk again.

{% include scrollybox/bg-ss-close.html %}


## Image Carousel With Full Options
All Sapling components work in Forest too. Here's a carousel with titles and captions:

{% assign forest_images =
"images/ferns-closeup.jpg,
images/moss-log.jpg,
images/autumn-forest.jpg,
images/misty-forest.jpg" | split: ','
%}

{% assign forest_headers =
"Ferns,Nurse Log,Autumn Canopy,Morning Mist" | split: ','
%}

{% assign forest_captions =
"Ancient plant forms thriving in filtered light.|
Decomposition feeds the next generation.|
The canopy transforms with the seasons.|
Mist softens the boundaries between trees." | split: '|'
%}

{% include images/carousel.html
  id="forest-carousel"
  width="85%"
  class="center"
  images=forest_images
  headers=forest_headers
  captions=forest_captions
%}


## What You've Learned in Forest
If you can create a Forest essay, you have mastered:

- **All Seedling components** — Images (figure + figure-wrap), headings, footnotes, pull quotes, block quotes, alert boxes
- **All Sapling components** — Scrollyboxes (bg.html), carousels, jumbotrons, pacing control
- **Advanced Forest features:**
  - Juxtapose interactive comparisons with custom starting position
  - Sticky backgrounds (bg-sticky)
  - Background switching with multiple images (bg-multi-long + bg-switch)
  - Side-scroll sections (bg-ss + bg-ss-image + bg-ss-close)
  - Center-aligned pull quotes and left-aligned blockquotes
  - Header eyebrow, divider, and subtitle fields
  - Auto-scroll for demos

**This is the full Xanthan toolkit.** Not every essay needs every feature, but you now have complete control over how to tell visual stories on the web.


## Bibliography

- Hooker, Van Dorn, Melissa Howard, and V. B Price. _Only in New Mexico: An Architectural History of the University of New Mexico: The First Century, 1889-1989_. Albuquerque, NM: University of New Mexico Press, 2000.

- University of New Mexico. Bainbridge Bunting Photograph Collection, 1870-1980, collection PICT 000-385, box 6	folder 102. Center for Southwest Research, University Libraries, University of New Mexico.

---

## Ready to Create Your Own?

**New to Xanthan?** Start with the [Getting Started guide](../../../docs/getting-started/) to create your own site first. Once you have a working site, come back here to build your ScrollStory.

**Already have a Xanthan site?** To make your own Forest essay:

1. **Duplicate this folder** (`scrollstories/forest/`) and rename it for your topic
2. **Replace the text** with your own content, keeping the structure
3. **Add your own images** to the `images/` folder
4. **Update the front matter** at the top (title, author, date, header image, etc.)
5. **Customize advanced components** - Adjust background switching, juxtapose comparisons, and scrollybox sequences

**Feeling overwhelmed?** Start with [Seedling](../seedling/) or [Sapling](../sapling/) and work your way up. Most excellent digital essays use Seedling or Sapling level features — Forest is for when you truly need cinematic power.


