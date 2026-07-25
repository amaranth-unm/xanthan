---
title: Documentation
layout: default
date: 2026-01-01
summary: Documentation for your Xanthan site, matched to the code in this repository.
---

{::nomarkdown}<div class="docs-index">{:/nomarkdown}

# Documentation

This documentation is bundled with your site and matches the version of Xanthan code you're running. For the latest updates, visit [xanthan-web.github.io/xanthan](https://xanthan-web.github.io/xanthan/).

---

## Getting Started

From zero to a live site in 15 minutes. Choose a template, create your repository, make your first edit.

{% assign gs = site.pages | where_exp: "pg", "pg.path contains 'docs/getting-started/'" | sort: "title" %}
{% for pg in gs %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url | prepend: site.baseurl }})
{% endunless %}{% endfor %}

---

## Editing

Make it yours. Pages, typography, images, colors, navigation, and StoryMaps-style ScrollStories.

{% assign ed = site.pages | where_exp: "pg", "pg.path contains 'docs/editing/'" | sort: "title" %}
{% for pg in ed %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url | prepend: site.baseurl }})
{% endunless %}{% endfor %}

### StoryMaps-style pages

ScrollStories are Xanthan's way to build familiar StoryMaps-style narratives with files you can edit by hand and ask AI to help revise.

- [StoryMaps-Style Pages with ScrollStories]({{ site.baseurl }}/docs/scrollstories/)
- [Background Scroll Boxes]({{ site.baseurl }}/docs/scrollstories/bg-scrollbox/)
- [Background Switching]({{ site.baseurl }}/docs/scrollstories/bg-switch/)
- [Side-Scrolling Text]({{ site.baseurl }}/docs/scrollstories/side-scroll/)

---

## Reference

Look things up. Site structure, component library, front matter, ScrollStory techniques, and troubleshooting.

{% assign ref = site.pages | where_exp: "pg", "pg.path contains 'docs/reference/'" | sort: "title" %}
{% for pg in ref %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url | prepend: site.baseurl }})
{% endunless %}{% endfor %}

---

## Using AI

Work with Claude, ChatGPT, or other AI assistants to customize your site faster.

{% assign ai = site.pages | where_exp: "pg", "pg.path contains 'docs/using-ai/'" | sort: "title" %}
{% for pg in ai %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url | prepend: site.baseurl }})
{% endunless %}{% endfor %}

---

{::nomarkdown}</div>{:/nomarkdown}

{: .text-muted}
You can remove the `/docs` link from your navigation whenever you like---the documentation will still be there if you need it.
