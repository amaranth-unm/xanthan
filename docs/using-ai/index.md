---
title: Using AI Assistance
layout: xanthan
date: 2026-02-16
---

{% include nav/scrollspy-toc.html %}

# Using AI Assistance

Most website frameworks assume you'll learn their technical stack before you can shape your site. Xanthan takes a different approach: its architecture is designed to be legible---not just to you, but to AI assistants. This means you can describe what you want in plain language and get results that actually work, because the AI can read the same structure you're working with.

This isn't a gimmick. It changes what's practical. Tasks that would normally require hours of learning CSS, HTML, or template syntax---redesigning your color palette, adding a new page with image carousels, building a ScrollStory section---become conversations. You describe what you want. The AI proposes changes. You look at the result and decide: yes, no, or try again. You stay in the editorial role; the AI handles the implementation.

## Why Xanthan works well with AI

Most websites are a tangle of files where changing one thing can break something else in unpredictable ways. Xanthan is structured differently. Colors, fonts, and spacing are controlled by named variables, so the AI can change your entire palette in one place and have it cascade consistently. Components like image figures, alert boxes, and carousels have documented parameters, so the AI knows exactly what's available and how to use it. Files are organized by purpose, so the AI knows where to make changes without guessing. And your navigation menu is just a simple structured list, so reorganizing your site is a conversation, not a puzzle.

In practice, this means prompts like *"give my site a warmer, more earthy feel"* or *"add a before/after image slider comparing these two photos"* produce working results---because the AI can read the design system and work within it.

## The range of what's possible

If you've never used AI for anything technical, start with something small: [Your First AI Edit](first-edit) walks through changing a color, swapping a font, and asking the AI to explain what it's doing. These are genuinely useful tasks, and they'll show you how the conversation works.

Once you've seen how it feels, the range opens up considerably. You can reshape the entire look of your site---colors, fonts, spacing---with a single conversation. You can ask the AI to create new pages, build a project gallery, or set up a card-based directory. You can add components like image carousels, before/after sliders, and audio players. You can build ScrollStory sections with background images and side-scrolling text panels. And when something isn't working, you can ask the AI to explain what's happening and walk you through the fix.

See [Building with AI](prompts) for specific examples across all of these.

## Setting up

You'll need a code editor on your computer and an AI assistant to talk to:

1. **Set up local editing** --- follow the [Editing Workflows](../editing/) guide to get a code editor and your project running locally
2. **Install an AI assistant** in your editor:
   - **GitHub Copilot** --- free for students and educators ([apply here](https://education.github.com/))
   - **Continue** --- free and open source ([install from VS Code extensions](https://marketplace.visualstudio.com/items?itemName=Continue.continue))
   - **Cursor** --- AI-first editor ([download](https://cursor.sh))
3. **Preview locally** --- [previewing locally](../editing/previewing-locally) lets you see changes instantly rather than waiting for GitHub to rebuild

## Giving AI context about your project

AI assistants work better when they understand what they're working with. The first time you start a conversation, give the AI a brief orientation:

> *"I'm working on a website built with the Xanthan framework. Design variables are in assets/css/base.css. Reusable components are in _includes/. Navigation is configured in _data/nav-top.yml."*

You only need to say this once per conversation. After that, the AI will make suggestions that fit Xanthan's patterns rather than generic web development advice.

For even better results, you can paste a section of the [Component Library](../reference/component-library) or [Pages & Front Matter](../reference/pages-and-front-matter) reference into the conversation when asking about a specific topic.

## You're the editor

This is worth saying plainly: using AI to build your site doesn't mean the AI is making decisions for you. You describe what you want. The AI translates that into code. You look at the result and judge whether it's right. If it's not, you say what's wrong and the AI tries again.

This is the same relationship an author has with a typesetter, or a director has with a camera operator. The technical skill is real, but the vision is yours. The AI can write CSS; it can't tell you whether your site should feel warm or clinical, whether your images should be large and dramatic or small and documentary. Those are your calls.

## Privacy note

When using AI assistants, your code is sent to the AI service for processing. Don't include sensitive information (passwords, API keys) in files where you're using AI assistance. Most educational licenses and free tiers are appropriate for academic and personal sites.

## Next steps

- **New to AI-assisted editing?** Start with [Your First AI Edit](first-edit)
- **Ready for more?** Browse [Building with AI](prompts) for ideas organized by what you're trying to accomplish
