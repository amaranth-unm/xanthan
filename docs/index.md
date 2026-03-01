---
title: Documentation
layout: xanthan
date: 2026-01-01
summary: Documentation for your Xanthan site, matched to the code in this repository.
---

# Documentation

This documentation is bundled with your site and matches the version of Xanthan code you're running. For the latest updates, visit [xanthan-web.github.io/xanthan](https://xanthan-web.github.io/xanthan/).

---

## Getting Started

From zero to a live site in 15 minutes. Choose a template, create your repository, make your first edit.

{% assign gs = site.pages | where_exp: "pg", "pg.path contains 'docs/getting-started/'" | sort: "title" %}
{% for pg in gs %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url }})
{% endunless %}{% endfor %}

---

## Editing

Make it yours. Pages, typography, images, colors, navigation — everything you need to customize your site.

{% assign ed = site.pages | where_exp: "pg", "pg.path contains 'docs/editing/'" | sort: "title" %}
{% for pg in ed %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url }})
{% endunless %}{% endfor %}

---

## Reference

Look things up. Site structure, component library, front matter, and troubleshooting.

{% assign ref = site.pages | where_exp: "pg", "pg.path contains 'docs/reference/'" | sort: "title" %}
{% for pg in ref %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url }})
{% endunless %}{% endfor %}

---

## Using AI

Work with Claude, ChatGPT, or other AI assistants to customize your site faster.

{% assign ai = site.pages | where_exp: "pg", "pg.path contains 'docs/using-ai/'" | sort: "title" %}
{% for pg in ai %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url }})
{% endunless %}{% endfor %}

---

## ScrollStories

Build immersive, scroll-driven visual narratives.

{% assign ss = site.pages | where_exp: "pg", "pg.path contains 'docs/scrollstories/'" | sort: "title" %}
{% for pg in ss %}{% unless pg.path contains 'index' %}
- [{{ pg.title }}]({{ pg.url }})
{% endunless %}{% endfor %}

---

{: .text-muted}
You can remove the `/docs` link from your navigation whenever you like — the documentation will still be there if you need it.
