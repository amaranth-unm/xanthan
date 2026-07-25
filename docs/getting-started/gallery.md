---
layout: default
title: Sites Built with Xanthan
date: 2026-03-01
summary: Real examples of websites built using Xanthan templates — portfolios, class projects, and scroll-driven narratives.
gallery_sites:
  - title: "Campus Histories"
    summary: "Card collections for histories of campus buildings and spaces, showing how to build ongoing, multi-contributor collaborative student projects over time."
    thumbnail: "/assets/images/gallery/class-project-screenshot.png"
    link: "https://amaranth.unm.edu/campus-history/"
    tags: ["class project"]

  - title: "Metahistory"
    summary: "A multi-course collaboration demonstrating various layout variations and more traditional essays as student projects."
    thumbnail: "/assets/images/gallery/metahistory.jpg"
    link: "https://unm-historiography.github.io/metahistory/"
    tags: ["class project"]

  - title: "Medieval Elite Marriages"
    summary: "Object-centric website featuring historical artifacts and their significance in medieval society."
    thumbnail: "/assets/images/gallery/medieval-marriages.png"
    link: "https://jeseyfried.github.io/medieval-marriages/"
    tags: ["digital exhibit"]


  - title: "A Cultural History of Arkham Asylum"
    summary: "Deep scrollstory with many images, demonstrating how visual analysis and narrative layering explore complex cultural history."
    thumbnail: "/assets/images/gallery/asylum.png"
    link: "https://hadas496.github.io/comics-and-Reaganomics-/"
    tags: ["scrollstory"]

  
  - title: "Santa Fe Trail Sites"
    summary: "Directory with map integration and linked location pages, showing how geographic navigation connects historical sites."
    thumbnail: "/assets/images/gallery/trails.png"
    link: "https://historic-trails.unm.edu/"
    tags: ["class project", "map"]

  
  - title: "Histories of the Future"
    summary: "A thematic essay collection exploring how historians and science fiction imagine technological futures — built with Xanthan to preserve the work of a small workshop."
    thumbnail: "/assets/images/gallery/histscifi.jpg"
    link: "http://histscifi.com"
    tags: ["workshop archive"]

  - title: "Amaranth Year in Review"
    summary: "A studio annual report showing how Xanthan can support reflective public documentation, project reporting, and evidence-rich institutional storytelling."
    thumbnail: "/assets/images/gallery/amaranth-year-review.png"
    link: "https://amaranth.unm.edu/studio/annual-report-25-26/"
    tags: ["annual report", "studio"]

---

# Sites Built with Xanthan

These are working Xanthan sites, not polished marketing demos. They show the range of things people can make from the same underlying system: class archives, visual essays, research collections, map-based directories, and small public projects that can keep growing after the first version goes live.

Use this page for browsing. If you are ready to make your own site, start with the [template guide](templates).

{% include nav/gallery-grid.html
  items=page.gallery_sites
  variant="uniform"
  min-width="300px"
  gap="var(--spacing-md)"
  show-summary=true
%}

---

Built something with Xanthan? Open an issue or pull request on the [Xanthan GitHub repository](https://github.com/xanthan-web/xanthan) and we'll add it here.
