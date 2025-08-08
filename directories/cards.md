---
title: Directory
layout: base
date: 2024-10-26
cards: 
  - title: "Feasting with the Gods: Rituals and Symbolism in Viking Foodways"
    card-image: https://viking.style/wp-content/uploads/2024/04/galileus2505_During_Viking_seasonal_celebrations_Viking_feasts__d22f4d95-2b9b-4521-8933-4277c04de6e0.jpg
    card-blurb: This chapter explores the ceremonial and religious aspects of food in Viking society, examining feasts, sacrificial offerings, and mythological references to food and drink in Norse texts.
    card-link: "thesis/chapter-1"

  - title: "From Fjord to Farm: Everyday Diets and Ingredients"
    card-image: "https://www.hurstwic.org/history/articles/daily_living/pix/jonsbok_whale_flensing_illumination.jpg"
    card-blurb: Focusing on the archaeological and environmental evidence, this chapter reconstructs the daily diet of the Viking Age, highlighting key ingredients, farming practices, and seasonal food cycles.
    card-link: "thesis/chapter-2"
---


# Directory

It's easy to make a basic grid of "cards" to link to pages on your site.

There are a few ways to get data on to the cards:
- From the data in the page header on the directory page
- From the data in the headers of individual pages in the same folder

Which you use depends on if you're just linking to a few pages that are in different folders, or a group of files in the same folder. Either way, you call the same include file to display the cards, you just send it data from different places.


## Cards from pages in a folder
Below, we create a set of cards from data on pages in the `essays folder`. First we define a variable called essays that gathers all the metadata from the pages in the essays folder. Then we pass that to our include file that has the code to generate the cards themselves.
```
{%raw%}{% assign essays = site.pages | where_exp: "page", "page.path contains 'essays/'" %}

{% include card-grid.html cards = essays%}{%endraw%}
```

{% assign essays = site.pages | where_exp: "page", "page.path contains 'essays/'" 
%}

{% include card-grid.html 
cards = essays
%}

All the HTML code that makes the cards follows the standard [Bootstrap card model](https://getbootstrap.com/docs/5.3/components/card/), which makes it easy to adjust the layout following Bootstrap documentation and examples.




## A stacked layout
This works exactly like above, but calls a different include file that present a stack of long, short cards in a vertical display. 

```
{%raw%} {% assign cards = page.cards %}

{% include card-list.html 
cards = cards 
%}{%endraw%}

```

{% assign cards = page.cards %}

{% include card-list.html 
cards = cards 
%}


## All done
This concludes our card display demo.