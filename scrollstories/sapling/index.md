---
title: Sapling
author: Fred Gibbs
layout: scrollstory
date: 2025-07-21
header-image: images/forest-trail-fog.jpg
thumbnail: images/sapling-card.jpg
summary: Our intermediate essay adds scrollyboxes, carousels, jumbotrons, and more — building on Seedling basics to create immersive visual narratives.
header-title: The Sapling
header-subtitle: the goldilocks sample
header-position: center
header-tier: section
toc-section: second
geo: [41.240000, -81.550000]
placename: Cuyahoga Valley National Park
tags:
    - history
    - nature
    - campus
---

This essay demonstrates **intermediate ScrollStory features**—building on what you learned in Seedling by adding scrollyboxes, carousels, jumbotrons, and more sophisticated visual storytelling. As you scroll, we'll point out what makes this more advanced than a Seedling essay.

**What makes this a "Sapling" essay?** It includes everything from Seedling (headings, images, footnotes, pull quotes, alerts) plus immersive components: text overlaying background images, full-width image breaks, image carousels, and more dynamic pacing. This is where ScrollStories start feeling cinematic.


## The Section Header

Notice that this page has a **shorter header** than Seedling — it doesn't fill the entire viewport. That's controlled by one front matter field:

```yaml
header-tier: section
```

The three tiers are:

- **hero** (default, no `header-tier` needed) — fills 100vh, nav overlays the image transparently
- **section** — roughly 60vh, nav sits above the header normally
- **banner** — a shallow 22vh strip, more of an accent than a feature

For essays where you want the nav always visible, or where the image isn't strong enough to carry a full-screen treatment, `section` is the right choice. For maximum visual impact at the start of a narrative, use hero.


## Building on Seedling Basics
{% capture firstimage %}
Everything from Seedling still works here: images with captions, footnotes, section headings, alert boxes. The Sapling template doesn't replace what you learned—it **adds** to it.

This layered approach is intentional. Master the basics, then add complexity incrementally. You're not learning a whole new system; you're expanding your toolkit with a few powerful new components.
{% endcapture %}
{% include images/figure-wrap.html
  image-position="right"
  image-width="48%"
  caption="A bridge along the trail. Photo by [Andrew Coelho](https://unsplash.com/@andrewcoelho) on Unsplash."
  image-path="images/forest-bridge.jpg"
  text=firstimage
%}


## Your First Scrollybox
Here's what makes Sapling different: keep scrolling and watch what happens next. You're about to see text appear **over** a background image, creating an immersive reading experience.

{% include scrollybox/bg.html
  image-path="images/mountain-landscape.jpg"
  above-box-space = "100vh"
  below-box-space = "80vh"
  box-align="left"
  box-content="
**This is a scrollybox.** The background image stays fixed while you scroll. This text box floats over it.

The box content supports full Markdown: **bold**, *italic*, [links](#), and lists:

- `image-path` — background image
- `above-box-space` — scroll distance before box appears
- `below-box-space` — scroll distance after box before image releases
- `box-align` — left, right, or center (this box is left-aligned)
"
%}


## What Just Happened?
That was a **scrollybox**—text that appears in a semi-transparent box over a full-screen background image. As you scrolled, the background image stayed fixed while the text box scrolled into view, stayed visible, then scrolled away.

**Why use scrollyboxes?** They create moments of focus and drama. The full-screen image immerses readers in a visual context, while the overlay text provides commentary, quotations, or key points. It's like a visual pause in your narrative.

**Technical note:** The `above-box-space` and `below-box-space` parameters control how much blank scroll space appears before and after the text box. Adjust these to control pacing—more space = slower, more contemplative; less space = faster pacing.


## Pull Quotes Can Go Left Too

{% include typography/pullquote.html
  box-align="left"
  width="45%"
  text="This pull quote sits on the left side of the page instead of the default right. Mixing left and right placement keeps the visual rhythm interesting."
%}

In Seedling, pull quotes used the defaults (right-aligned, 40% width). Here we've customized both: `box-align="left"` and `width="45%"`. These parameters give you finer control over how pull quotes interact with surrounding content.

You might place a left-aligned pull quote after a right-aligned image to create a zigzag pattern that keeps readers' eyes moving. Subtle choices like these separate decent layouts from great ones.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat, lacus id blandit ornare, mi nisi rutrum ante, vitae dignissim mauris nisl mattis nisl.


## Jumbotron: A Full-Width Visual Break

The **jumbotron** is a full-browser-width image that breaks out of the content margins. It creates a dramatic visual pause. When you add text, a gradient fades in automatically so words read cleanly against the image.

{% include images/jumbotron.html
  image-path="images/lake-mountains.jpg"
  height="50vh"
  box-align="left"
  text="A full-width image break with text overlaid on a gradient. The gradient direction follows the text position — left text means left-to-right fade."
  caption="Mountains reflected in a lake. Jumbotrons don't need text — leave it out for a pure visual break."
%}

**When to use a jumbotron vs. a scrollybox:** Jumbotrons are quick visual pauses — the reader sees the image and moves on. Scrollyboxes are immersive — the image fills the screen while the reader scrolls through content. Jumbotrons break up text; scrollyboxes replace it temporarily.


## Image Carousels for Comparisons
Below you'll see an **image carousel**—multiple images you can click through. This version includes slide titles and captions.

{% assign sapling_images =
"images/mountain-stream.jpg,
images/forest-tall-trees.jpg,
images/autumn-forest.jpg" | split: ','
%}

{% assign sapling_headers =
"Mountain Stream,Tall Trees,Autumn Colors" | split: ','
%}

{% assign sapling_captions =
"A stream winds through the landscape.|
Tall trees reach for the sky — notice how the vertical composition draws your eye upward.|
Autumn transforms the forest into a palette of warm colors." | split: '|'
%}

{% include images/carousel.html
  id="sapling-carousel"
  width="80%"
  class="center"
  images=sapling_images
  headers=sapling_headers
  captions=sapling_captions
%}

**Why use carousels?** When you have 3-5 related images (historical documents, different views of a building, a sequence of photos), a carousel lets readers compare them without scrolling past each one. Click the arrows or dots to navigate.

Notice this carousel has **titles and captions** — features we didn't use in Seedling. Captions use the pipe `|` separator (instead of commas) so you can include commas in caption text.


## A Scrollybox With Title Overlay

Scrollyboxes aren't just for text boxes. You can also use them as simple image reveals with a title and subtitle overlaid directly — no box needed:

{% include scrollybox/bg.html
  image-path="/assets/images/backgrounds/hike-2.jpg"
  height="80vh"
  title="The Summit"
  text="A moment of stillness at the top"
%}


## What You've Learned in Sapling
If you can create a Sapling essay, you can:

- **Use scrollyboxes** to overlay text on full-screen background images
- **Control pacing** with scroll space parameters
- **Add jumbotrons** for full-width visual breaks with optional text
- **Customize pull quotes** with left/right alignment and width
- **Add image carousels** with titles and captions for comparing multiple images
- **Use title overlays** on background images without text boxes
- **Choose header tiers** for different visual weight at the top of your essay
- **Mix components** - scrollyboxes, pull quotes, carousels, jumbotrons, and standard images in one essay

**This is enough for most sophisticated digital humanities projects.** The Forest essay adds background switching, side-scrolling, and more for even more cinematic effects.


## Bibliography

- Hooker, Van Dorn, Melissa Howard, and V. B Price. _Only in New Mexico: An Architectural History of the University of New Mexico: The First Century, 1889-1989_. Albuquerque, NM: University of New Mexico Press, 2000.

- University of New Mexico. Bainbridge Bunting Photograph Collection, 1870-1980, collection PICT 000-385, box 6	folder 102. Center for Southwest Research, University Libraries, University of New Mexico.

---

## Ready to Create Your Own?

**New to Xanthan?** Start with the [Getting Started guide](../../../docs/getting-started/) to create your own site first. Once you have a working site, come back here to build your ScrollStory.

**Already have a Xanthan site?** To make your own Sapling essay:

1. **Duplicate this folder** (`scrollstories/sapling/`) and rename it for your topic
2. **Replace the text** with your own content, keeping the structure
3. **Add your own images** to the `images/` folder
4. **Update the front matter** at the top (title, author, date, header image, etc.)
5. **Customize components** - Add or remove scrollyboxes, carousels, and jumbotrons as needed

Ready for even more? Check out the [Forest template](../forest/) for advanced features like background switching and side-scrolling.
