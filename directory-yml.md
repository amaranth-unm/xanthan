---
title: Directory
layout: base
date: 2024-10-26
chapters: 
  - title: "Feasting with the Gods: Rituals and Symbolism in Viking Foodways"
    image: https://viking.style/wp-content/uploads/2024/04/galileus2505_During_Viking_seasonal_celebrations_Viking_feasts__d22f4d95-2b9b-4521-8933-4277c04de6e0.jpg
    summary: This chapter explores the ceremonial and religious aspects of food in Viking society, examining feasts, sacrificial offerings, and mythological references to food and drink in Norse texts.
    link: "thesis/chapter-1"

  - title: "From Fjord to Farm: Everyday Diets and Ingredients"
    image: "https://www.hurstwic.org/history/articles/daily_living/pix/jonsbok_whale_flensing_illumination.jpg"
    summary: Focusing on the archaeological and environmental evidence, this chapter reconstructs the daily diet of the Viking Age, highlighting key ingredients, farming practices, and seasonal food cycles.
    link: "thesis/chapter-2"

  - title: "Brews, Bread, and Trade: Food as Economy and Identity"
    image: https://en.natmus.dk/typo3temp/assets/images/csm_Fladbroed_70aaf8033f_6b018df9bd.jpg
    summary: This chapter investigates how food production, especially brewing and baking, intersected with trade networks and social status, emphasizing the role of imported goods and culinary identity in Viking culture.
    link: "thesis/chapter-2"
---


# Directory

This page demonstrates a standard "card" directory to access site pages. It defines the card data in the YML header for this page, and uses a liquid code snippet to loop through the data and display the cards.

The HTML follows the standard [Bootstrap card](https://getbootstrap.com/docs/5.3/components/card/).


<!-- The HTML below could also be put in an include file (like _includes/card.html) so that it could be reused on multiple pages. It's here just to be more direct about what HTML code is going to be generated for each card. -->


## A stacked approach

{% for chapter in page.chapters %}

  <div class="card mb-3">
  <a href="{{chapter.link}}">
    <div class="row g-0">
      <div class="col-sm-4">
        <img src="{{ chapter.image }}" class="img-fluid rounded-start card-image" alt="...">
      </div>
      <div class="col-sm-8">
        <div class="card-body">
          <h3 class="card-title">{{ chapter.title }}</h3>
          <p class="card-text"> {{ chapter.summary }} </p>
        </div>
      </div>
    </div>
  </a>
  </div>

{% endfor %}


## Here's a grid-based approach
<!-- change row-cold-md-2 to 3 or 4 for different number of cols -->
<div class="row row-cols-1 row-cols-md-2 g-4">

{% for chapter in page.chapters %}
<div class="col">
  <div class="card v-card">
    <a href="{{chapter.link}}">
    <img src="{{ chapter.image }}" class="card-img-top" alt="...">
    <div class="card-body">
      <h3 class="card-title">{{ chapter.title }}</h3>
      <p class="card-text">{{ chapter.summary }}</p>
    </div>
    </a>
  </div>
</div>
{% endfor %}

</div>


### All done
This concludes our card display demo.