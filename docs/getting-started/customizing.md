---
layout: default
title: Customizing Your Site
date: 2026-08-16
summary: You have a live site that still looks like the starter. Here is what to do next, and why the technical work is the part you can hand off.
---

{% include nav/scrollspy-toc.html %}

# Customizing Your Site

{: .lede}
You have a live website and it looks exactly like the starter site you copied---someone else's name, someone else's sample essays, someone else's colors. That is a strange place to be standing, and it is worth saying plainly rather than pretending the hard part is over.

It is also the right place to be standing. You are not facing a blank page. Every change from here is a small edit to something that already works, which is a much easier problem than building a site from nothing and hoping it runs.

---

## The technical work is the part you can hand off

Xanthan is built so an AI assistant can work on it usefully. That is a design decision, not a marketing line. The colors and type live in named variables rather than scattered through the files; components take documented parameters; navigation is a short list in one place; and every page is plain text an assistant can read start to finish. When you ask for a change, there is one obvious place to make it.

So you can describe what you want in ordinary language---"make the headings warmer," "add a page for my CV"---and let the assistant find the file and edit it. You judge the result.

This is not a way around understanding your own site. It is a way into it. Ask for a change, look at what moved, then ask *why that file*. You pick up the vocabulary by using it, which is faster than learning it first and building second.

None of it is required. Every change on this page can be made by hand, and the [Reference](../reference/pages-and-front-matter) pages document how. But learning CSS syntax well enough to change a color is time spent on something that probably isn't near the top of your list, and the structure is here so you can spend it elsewhere.

---

## What to do next

**Start by replacing the words yourself.** Open the about page, select the sample text, type yours over it, save. That is the entire operation---no prompt, no assistant, no syntax. Do two or three pages this way before anything else, because it is the fastest way to see that these really are just text files and that you are not locked out of your own site.

That is the line worth learning early. Writing is the part you do. The machinery around it is the part you can hand off, and it is where an assistant actually saves you something.

**Change how it looks.** Color and type do more than anything else to make a site feel yours, and they live in variables spread across a stylesheet---findable by hand, tedious to keep consistent.

> *"Give the site a warmer feel---a cream background, dark brown text, and a muted terracotta accent. Keep the hover and border colors in step with it."*

**Add a component.** Galleries, side-by-side images, scrolling sections and maps all take named parameters. You can copy them out of the Component Library yourself; asking is faster than looking up which parameter does what.

> *"Put a two-column image gallery on my projects page, with captions under each image."*

**Reshape the site, not just a page.** Adding a page means writing it, naming it, and adding it to the navigation---three files that have to agree.

> *"Add a page for my CV with proper headings, and put it in the top menu."*
>
> *"I don't need the sample essays. Delete them and remove them from the navigation."*

**Ask what things are.** This is the one people skip, and it is the one that compounds.

> *"What does the file in _includes actually do, and when would I edit it instead of a page?"*

---

## Where to go from here

- **[AI-Ready Website Building](../using-ai/)** --- how to set up an assistant, and why the structure matters
- **[Your First AI Edit](../using-ai/first-edit)** --- a small, safe change to try first
- **[Building with AI](../using-ai/prompts)** --- worked prompts grouped by what you are trying to do
- **[Reference](../reference/pages-and-front-matter)** --- for when you would rather look it up than ask

Nothing here is irreversible. Every change is versioned, so a bad idea is one undo away---which is the real reason it is safe to experiment.
