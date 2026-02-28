---
layout: xanthan
title: Choose a Template
date: 2026-02-14
---

<style>
.template-buttons {
  display: flex;
  gap: var(--spacing-xs);
  margin-top: var(--spacing-md);
}

.template-btn {
  padding: var(--spacing-xs) var(--spacing-md);
  font-size: 0.9rem;
  border-radius: var(--radius-sm);
  border: 1px solid var(--border-medium);
  background: var(--bg-card);
  color: var(--text-body);
  text-decoration: none;
  cursor: pointer;
  text-align: center;
}

.template-btn:hover {
  background: var(--accent-border-weak);
  border-color: var(--accent-border);
}

.template-btn.primary {
  background: var(--accent-primary);
  color: var(--white);
  border-color: var(--accent-primary);
}

.template-btn.primary:hover {
  background: var(--interactive-hover);
  border-color: var(--interactive-hover);
}
</style>

{% include nav/scrollspy-toc.html %}

# Choose a Template

Xanthan offers four starting points, each designed for a different kind of project. Pick the one closest to what you're building---you can always add features later.

Browse the options below, then click "Use this template" to jump into the setup process with the right instructions already loaded.

---

## Portfolio

{% include images/figure.html image-path="/assets/images/portfolio-screenshot.png" class="right" width="45%" alt-text="Portfolio template screenshot" caption="" %}

A personal or professional site for presenting your work, interests, and credentials. Comes with an about page, a CV, and sample project pages---the kind of structure that helps you own your professional identity rather than renting it from LinkedIn. This is the most common starting point for individual projects: a handful of pages with a clear top navigation bar connecting them.

<div class="template-buttons">
  <a class="template-btn primary" href="/docs/getting-started/?template=portfolio">Use this template</a>
  <a class="template-btn" href="https://xanthan-web.github.io/portfolio-template" target="_blank">View demo</a>
</div>

---

## Class Project

{% include images/figure.html image-path="/assets/images/class-project-screenshot.png" class="right" width="45%" alt-text="Class Project template screenshot" caption="" %}

This template shows how you might organize many individual scrollstories or pages of any kind that belong together as a collection. Card-based directory pages organize contributions automatically, so the site grows as people add to it. The instructor sets up the structure; students follow clear directions to fill it in.

<div class="template-buttons">
  <a class="template-btn primary" href="/docs/getting-started/?template=class-project">Use this template</a>
  <a class="template-btn" href="https://xanthan-web.github.io/class-project-template" target="_blank">View demo</a>
</div>

---

## ScrollStory

{% include images/figure.html image-path="/assets/images/forest-scroll.gif" class="right" width="45%" alt-text="ScrollStory template example" caption="" %}

Sometimes a whole website is overkill, and what you really want to make is a single immersive narrative. The scrollstory template gives you a main scrollstory page (of course you can always add more), where background images shift as you scroll, text panels slide in from the side, and the reading experience becomes part of the argument. If you've used ESRI StoryMaps this will seem very familiar, but it's driven with simple text files that are super quick to edit. 

<div class="template-buttons">
  <a class="template-btn primary" href="/docs/getting-started/?template=scrollstory">Use this template</a>
  <a class="template-btn" href="https://xanthan-web.github.io/scrollstory-template" target="_blank">View demo</a>
</div>

---


## Not sure?

**Don't worry!** The difference between the templates is usually a few files. All the component functionality comes with each template. You can easily add or delete files from whatever template you start with. That flexibility is the whole point of Xanthan!