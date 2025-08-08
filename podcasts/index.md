---
title: index
layout: base
---

# Podcasts

This is the `index.md` file in the `podcasts` folder.



  <div class="row row-cols-1 row-cols-md-1 g-4">
    {% for podcast in site.pages %}
      {% if podcast.path contains 'podcasts/' and podcast.title and podcast.title != "index" %}
        {% include podcast-row.html podcast=podcast %}
      {% endif %}
    {% endfor %}
  </div>