---
title: Documentation
layout: xanthan
date: 2026-02-14
summary: Complete documentation for the Xanthan framework
---

# Xanthan Documentation

{% assign getting_started = site.pages | where_exp: "page", "page.path contains 'docs/getting-started'" | sort: "order" %}
{% assign editing = site.pages | where_exp: "page", "page.path contains 'docs/editing'" | sort: "order" %}
{% assign reference = site.pages | where_exp: "page", "page.path contains 'docs/reference'" | sort: "order" %}
{% assign using_ai = site.pages | where_exp: "page", "page.path contains 'docs/using-ai'" | sort: "order" %}
{% assign scrollstories = site.pages | where_exp: "page", "page.path contains 'docs/scrollstories'" | sort: "order" %}

## Getting Started

From zero to a live site in 15 minutes. Choose a template, create your repository, make your first edit.

{% include nav/card-toc.html rows=getting_started %}

---

## Editing

Make it yours. Pages, typography, images, colors, navigation---everything you need to customize your site.

{% include nav/card-toc.html rows=editing %}

---

## Reference

Look things up. Site structure, component library, troubleshooting, and color palettes.

{% include nav/card-toc.html rows=reference %}

---

## Using AI

Work with Claude, ChatGPT, or other AI assistants to customize your site faster.

{% include nav/card-toc.html rows=using_ai %}

---

## ScrollStories

Build immersive, scroll-driven visual narratives.

{% include nav/card-toc.html rows=scrollstories %}

---

## Additional Resources

- [FAQs](/faqs) --- Common questions and answers
- [About Xanthan](/about) --- Philosophy and approach
