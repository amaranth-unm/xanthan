---
title: Map
layout: xanthan
date: 2025-01-01
---

# Sample Map Page

Xanthan includes a simple way to create interactive maps that automatically display pins for any pages that include geographic coordinates. This is perfect for projects involving places, travel narratives, historical sites, or any content with a spatial dimension.

{% include nav/map.html
  id="demo-map"
  height="600px"
  width="100%"
  start_coords="[39.8283, -98.5795]"
  zoom=4
%}
