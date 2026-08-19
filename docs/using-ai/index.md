---
title: AI-Ready Website Building
layout: default
date: 2026-02-16
summary: Why a site built for the second day — the day after AI makes it — needs a structure both you and the assistant can read.
---

{% include nav/scrollspy-toc.html %}

# AI-Ready Website Building

{: .lede}
We have all heard that AI can make a website for you. Sometimes it can. The harder question is what happens the next day: can you understand what it made, change a sentence, swap an image, fix a broken link, teach someone else how the site works, and keep improving it without spending tokens on every tiny edit?

Xanthan is built for that second day.

The point is not that AI replaces the work of making a site. The point is that AI works better when it has a clear structure to work inside. Xanthan gives it that structure: Markdown pages, YAML navigation files, named CSS variables, documented components, and a small set of predictable layouts. Those constraints help the AI make better changes. They also help you read, revise, and undo those changes yourself.

That is the bargain: AI assistance without giving up human control.

---

## AI works better with guardrails

A blank prompt can produce an impressive website mockup. It can also produce a pile of code that only the AI understands. That may be fine for a throwaway demo. It is a problem for a course site, a public humanities project, a portfolio, or anything you expect to maintain.

Xanthan gives the AI a curated context instead of an empty canvas. It does not need to invent a new design system every time you ask for a change. It can see where colors live, how navigation is configured, how images are added, and which components already exist.

In practice, this means prompts like these are more likely to produce useful results:

> *"Give my site a warmer, more earthy palette, but keep the existing theme structure so I can edit the colors later."*

> *"Create a StoryMaps-style ScrollStory page with four sections. Use existing Xanthan components and explain where I should replace the placeholder images."*

> *"Add a gallery-style navigation page for these projects using the existing card grid include. Do not invent a new layout unless the current components cannot do it."*

The guardrails are not there to limit imagination. They are there so that creative requests turn into maintainable files.

---

## What Xanthan makes legible

Xanthan is organized so both humans and AI assistants can find the right place to make a change.

- **Content lives in Markdown files.** Pages are readable text files with a small front matter section at the top.
- **Navigation lives in YAML.** The top menu is a structured list, not hidden in a template.
- **Design choices use named variables.** Colors, fonts, spacing, borders, and shadows can be changed without hunting through every page.
- **Components have documented parameters.** Figures, cards, galleries, alerts, media players, and ScrollStory sections are reusable pieces with names and options.
- **Themes are separate files.** A palette can be swapped, copied, or customized without rewriting the whole design.

This matters for AI because the assistant can make targeted changes instead of guessing. It matters for you because the result is still something you can inspect with ordinary reading skills.

---

## Open files make better collaboration

A generated website can hide the work that produced it. Xanthan keeps the work visible. That is especially important in class projects, collaborative archives, and public scholarship where the site is not only an output, but part of the learning process.

When the files are open and readable, students can see how their pages relate to the larger project. Instructors can comment on structure as well as prose. Contributors can learn from each other's examples. A future editor can return months later and understand enough to make a small change without regenerating the whole site.

This is one reason Xanthan pairs well with AI: the assistant can help people across different levels of technical confidence, while the framework keeps the result accountable to shared, inspectable materials.

---

## You stay in the editorial role

Using AI with Xanthan should feel less like ordering a finished product and more like working with a technically skilled collaborator. You describe the intellectual and visual goal. The AI translates that into code. You look at the result and decide whether it serves the project.

That distinction matters. The AI can write CSS, assemble includes, and create page files. It cannot decide whether your archive should feel spare or dense, whether a ScrollStory moment clarifies the evidence or distracts from it, or whether the tone of your homepage sounds like you. Those are editorial decisions.

A useful habit is to ask the AI to explain what it changed after it makes an edit:

> *"Explain the files you changed, why you changed them, and what I should edit by hand if I want to adjust this later."*

That kind of explanation builds vocabulary. Vocabulary gives you more control the next time you ask.

---

## Getting started: three ways in

There is no single right way to work with AI. Start wherever you are comfortable.

### 1. Browser-based chat

The simplest approach is to open [ChatGPT](https://chatgpt.com), [Claude](https://claude.ai), or another AI chat interface in your browser. Describe what you want, then paste the relevant piece of your code.

Start by giving the AI a quick orientation:

> *"I'm working on a website built with the Xanthan framework. It uses Jekyll, Markdown pages, YAML navigation, CSS custom properties, and Liquid includes. I want to [describe your goal]. Here's the relevant file:"*

Then paste the file contents. This works well for focused questions: changing a color, adding an image, fixing a page that will not display, or asking what a piece of syntax means.

### 2. GitHub Copilot in your browser

GitHub has a built-in AI assistant that can read your repository. If you have a GitHub account, you can open it by clicking the Copilot icon at the top of a repository page.

Because it can see your files, it can answer questions like *"why is my nav menu not showing up?"* or *"which pages use the scrollstory layout?"* without you copying each file into the chat.

GitHub Copilot is free for students and educators through [GitHub Education](https://education.github.com/).

### 3. Local editing with an AI-enabled editor

For more substantial work, a local editing environment with an integrated AI assistant is the most capable option. The AI can read and edit your files directly, and you can preview changes on your computer before publishing them.

See [Working Locally](../reference/working-locally) for how to set up local editing, then add one of these AI tools:

- **GitHub Copilot** in VS Code, free for students and educators through GitHub Education
- **Continue**, a free and open source VS Code extension
- **Cursor**, an AI-first editor based on VS Code

---

## A strong first prompt

When you start a conversation, give the AI context and boundaries:

> *"I'm working on a Xanthan site. Please preserve the existing framework patterns. Use Markdown for content, YAML for navigation, CSS variables for visual changes, and existing includes when possible. If you need to add new code, explain where it belongs and how I can edit it later."*

Then state the task in ordinary language:

> *"I want my homepage to feel more like a serious academic project with a bold visual edge. Suggest a plan first, then make the smallest set of changes that would get me there."*

This kind of prompt tells the AI not just what you want, but what kind of result you need: one that fits the site and remains editable.

---

## What to ask AI to do

Start small if you are new to this. Ask the AI to change one visible thing, then ask it to explain the change.

Good early requests include:

- Change the color palette while preserving the theme file structure.
- Add an image to a page and explain how image paths work.
- Create a new page with the right front matter.
- Add a card grid, figure, audio player, or alert using an existing include.
- Build a StoryMaps-style ScrollStory section from a short outline.
- Explain why something on the page looks different than expected.

See [Your First AI Edit](first-edit) for a gentle first pass, and [Building with AI](prompts) for more ambitious examples.

---

## Privacy note

When you use an AI assistant, the text you provide may be sent to that AI service for processing. Do not paste passwords, API keys, private student information, unpublished sensitive research, or anything you are not allowed to share with that service.

For most academic portfolios, course project sites, and public humanities pages, the files are already intended to be public. Still, it is worth noticing what you are sharing before you ask for help.

---

## Next steps

- **New to AI-assisted editing?** Start with [Your First AI Edit](first-edit)
- **Ready for more?** Browse [Building with AI](prompts) for examples organized by what you are trying to accomplish
