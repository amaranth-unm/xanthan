---
layout: base
title: Editing your site
author: Fred Gibbs
date: 2019-10-03
---

# {{page.title}}

<!--
### Table of Contents
* TOC
{:toc}
-->

Let's work through the process of editing your a page and adding a new page. All steps start from your repository home page.

### Editing a page
Let's make a simple change to the homepage (your `index.md` file).
- Click on the `index.md` file.
- Click on the edit icon (looks like a pencil)
- Make some change to the text.
- Hit the green Commit button near the bottom of the page.
- Wait a few minutes and refresh your webpage.

### Add a new page
- Click the Add file button
- Type in the filename, including a `.md` extension
- Hit the green Commit button near the bottom of the page

---

## Edit the navigation bar
Now we need to add the new page to the navigation bar
- Click on the `_includes` directory
- Click on `nav.html`
- Click on the edit icon (looks like a pencil)
- Duplicate (via copy and paste) on of the lines that contains a link to a page on your site
- Replace the old link with the name of the page you just created but WITHOUT the `.md` extension
- Hit the green Commit button near the bottom of the page


## Including Images
Images instructions are on [their own page](using-images).


## Other typographic features
Look in the `_includes` folder and you'll see a number of code snippets. These are all small chunks of code of HTML and the special language that Jekyll uses to help make pages more flexible. These make it easy to embed other things on your pages, like videos and pull quotes. They work the same way as do including images, although the parameters you'll set in the code snippets are naturally a little different.

All the include files that you might want to use are explained on the [code examples page](code).
