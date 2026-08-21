---
title: Map
layout: default
date: 2025-01-01
---

# Sample Map Page

Xanthan includes a simple way to create interactive maps that automatically display pins for any pages that include geographic coordinates. This is perfect for projects involving places, travel narratives, historical sites, or any content with a spatial dimension.

A page joins the map by carrying `geo: [lat, lng]` in its front matter, and the popup is built from the rest of that page's front matter — so nothing here is a list anyone maintains by hand. With no opening coordinates given, the map opens on the view that fits everything it found.

{% include nav/map.html
  id="demo-map"
  class="map-wrap--wide"
  height="600px"
%}
