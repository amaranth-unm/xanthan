---
layout: base
title: Understanding your site
author: Fred Gibbs
date: 2019-10-03
---

# {{page.title}}

<!--
### Table of Contents
* TOC
{:toc}
-->


## Basic Site Components
Let's check out the core files for your website. Go to your own repository at http://GITHUB-USERNAME.github.io/REPOSITORY. All of the files are important in their own way, but we're going to focus on the folders and files that most directly create our website.

### `_includes` directory
This directory hold files that are typically small bits of code (called snippets) that appear on more than one page, like a nav bar or footer. This way, if you want to change the footer on all your site pages, you can change it in just one spot.

### `_layouts` directory
This directory provides the basic templates for different kinds of pages. When you make a new page on your site, you will assign a layout to that page.

### `essays` directory
This directory could be named anything--it's just a place to put separate essays. You might have many of these directories for essays on different topics, like `historic sites`, `campus buildings`, etc.

### `guides` directory
This directory has code examples of how to make certain things on your site. You might keep this around while you're learning and building your site, but you can always delete it when you're done. All the documentation is also available at the main Xanthan site.


### "home" directory files
You'll notice that you have a few pages in the root directory of your repository, like `credits.md` and `about.md`. 


To understand more about pages and editing, move on to the [Editing your site](editing-your-site.md) guide.
