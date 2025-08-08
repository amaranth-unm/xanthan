---
title: Directory
layout: base
date: 2024-10-26
---

# Directories
Even for a small class or small project, you need to have some kind of directory or table of contents for your content. Xanthan comes with a few ways to do this, and of course more can be added.


## Table of Contents
One familiar approach is to create a table of contents for your site pages, like you'd find in a book.

Site pages, like student essays, that you want to feature will have metadata at the top of the file, like
```
---
title: My Essay Title
author: Fred Gibbs
summary: This is a short but provocative summary of my essay
---
```


We can use this data to automatically generate links to the essays. Below, we create a list of from data on pages in the `essays` folder. First we define a variable called `pages` (it could be anything) that gathers all the metadata from the files in the essays folder. Then we send that data to our include file, which has the HTML code to generate the a list themselves. The code in the gray box produces the cars just below it. 


```
{%raw%}{% assign pages = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include toc.html 
rows = pages
%}{%endraw%}
```

{% assign pages = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include toc.html 
rows = pages
%}

---



## Stacked cards
A little fancier than a ToC-style list, we can a generate of a stack of horizontal "cards" in the same way. In terms of gathering data to display, this works exactly like above. But it calls a different include file, which presents a stack of long, short cards in a vertical display. 

```
{%raw%}{% assign essays = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include card-grid.html cards = essays%}{%endraw%}
```

{% assign essays = site.pages | where_exp: "page", "page.path contains 'essays/'" %}
{% include card-list.html 
cards = essays 
%}



## Gridded cards
You can see more cards at a glance if you use a grid layout with slightly smaller cards.

```
{%raw%}{% assign essays = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include card-grid.html cards = essays%}{%endraw%}
```

{% assign essays = site.pages | where_exp: "page", "page.path contains 'essays/'" %}
{% include card-grid.html 
cards = essays
%}


## Left Navbar
Another way of getting to pages on your site can be through a nav bar that always stays on the left side of the page. Check out the [left nav demo](left-nav-demo)


## Custon displays
We can list your pages just about however you'd like. Let's say your students made poscasts, assigned them one or more tags, and and you wanted a way to list them. We can make something like a [podcast listing](podcasts).


## Styling your directory
All the HTML code that makes the cards follows the standard [Bootstrap card model](https://getbootstrap.com/docs/5.3/components/card/), which makes it easy to adjust the layout following Bootstrap documentation and examples.

## All done
This concludes our card display demo.