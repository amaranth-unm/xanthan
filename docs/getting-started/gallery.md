---
layout: default
title: Sites Built with Xanthan
date: 2026-03-01
summary: Real examples of websites built using Xanthan templates — portfolios, class projects, and scroll-driven narratives.
---

# Sites Built with Xanthan

{: .lede}
These are working Xanthan sites, not polished marketing demos. They show the range of things people can make from the same underlying system: class archives, visual essays, research collections, map-based directories, annual reports, and small public projects that can keep growing after the first version goes live.

The gallery leans toward collaborative teaching examples on purpose. Xanthan is useful for individual sites, but its strongest argument is often collective work: many contributors, readable files, public audiences, and projects that remain editable after the course or workshop ends.

Several of these have been extended well past what Xanthan ships---custom layouts, bespoke listing pages, project-specific styling. That is the point of owning the files, and it is worth knowing which parts are which. The structure you can see in all of them---card directories that assemble contributions, a page per essay or object, maps built from coordinates in front matter, images and captions---is standard. The distinctive surface styling on a few is not, and was written by the projects themselves.

If something here looks like what you want, the [Component Library](../reference/component-library) lists what comes as standard, and an AI assistant is good at closing the gap between the two.

Use this page for browsing. If you are ready to make your own site, start with the [starter site guide](templates).

{% include nav/gallery-grid.html
  items=site.data.gallery
  variant="uniform"
  min-width="300px"
  gap="var(--spacing-md)"
  show-summary=true
  heading-level=2
%}

---

Built something with Xanthan? Open an issue or pull request on the [Xanthan GitHub repository](https://github.com/xanthan-web/xanthan) and we'll add it here.
