---
title: Xanthan — Websites for Digital Humanities
layout: default
date: 2026-01-01
summary: Open, transparent, AI-ready websites for scholars, instructors, and students. Built for public work people can understand, teach, and maintain.
reasons:
  - title: "You own your content"
    text: "Your site is text files in a repository you control. Move it to any host, take it between institutions, keep it after the grant ends. Hosting on GitHub Pages is free---no ads, no subscription, no terms-of-service surprises."
  - title: "Built to last"
    text: "HTML, CSS, and Markdown have worked for decades and will keep working. There's no database to secure, no software to update, no security patches to apply. What you build today will still run in 2050 without maintenance."
  - title: "You learn by working"
    text: "Start with plain-language prompts and Markdown, then pick up HTML, CSS, and Git as you go. These aren't \"website skills\"---they're foundational to digitally-engaged humanities work, and you learn them by building something real."
  - title: "Others can build on it"
    text: "The structure is visible: content, navigation, design, and reusable components each have a place. Students can learn from how a site is assembled, and colleagues can contribute without everyone arriving with the same technical confidence."
---

{: .hero-section}
# Show Your Work

{: .lede}
Xanthan makes academic websites that stay easy to change---and easy to collaborate on. You edit plain text files with a direct correspondence between what your text and your page. Students and colleagues can contribute with a few non-technical steps to get started, the work stays yours to move, and it will still be running years later even if you forget about it. And it will work the same way when you pick it up again.

{% include layout/section.html style="alt" %}

{% include nav/gallery-grid.html
  items=site.data.gallery
  heading="What Can You Build?"
  intro="Course archives, oral history collections, digital exhibits, scrolling narratives, mapped directories, annual reports---every one of these is a real Xanthan site, and every one of them is plain text underneath."
  variant="uniform"
  class="gallery-grid--wide"
  min-width="190px"
  gap="var(--spacing-md)"
  show-summary=true
%}

{% include layout/section-end.html %}

## What is Xanthan?
Xanthan is not software; it's not a platform. There is nothing to install, no account to create. It is a set of files that make a website on a free, widely used platform, and directions for what to do with them.

GitHub stores files and publishes websites for millions of people, it will turn your copy into an acessible site running from your own account. From then on, editing the site means editing simple text files.

So this is low-tech, not no-tech. You will open text files and click buttons on a website. You will not write code, run a server, manage a database, or install anything.


{% include layout/section.html style="alt" %}

## Why Xanthan?
Digital humanities work should be as open in its process as in its product. Xanthan is built on a simple conviction: scholars shouldn't have to rent their web presence from proprietary platforms, and they shouldn't need a computer science degree to publish online.

{% include layout/feature-grid.html features=page.reasons %}

{: .link-callout}
[See more in our FAQs →](faqs#why-not-use-wix-or-squarespace){: .btn-secondary .btn-sm}

{% include layout/section-end.html %}


## Who is Xanthan for?

**Scholars seeking public engagement.** Move your work beyond paywalls and PDFs. Build research portfolios, multimedia essays, and interactive arguments that reach broader audiences---on a site you control, not a platform that controls you.

**Instructors teaching digital literacy.** Turn class projects into real public scholarship. Students build collectively around shared themes---local history archives, community documentation, thematic collections---learning web fundamentals while creating work that outlasts the semester.

**Students building professional presence.** Create a portfolio that showcases your research, teaching, and digital skills. Own your academic identity rather than scattering it across platforms.

{% include images/jumbotron.html
  image-path="/assets/images/site/scaffolding-hand.png"
  fade-start="50%"
  fade-end="100%"
  text-shadow=false
  text="

## Built for AI Collaboration.
AI can generate a website from a simple prompt. That's impressive, but impressive but opaque to whoever has to change it next.

Xanthan provides starter sites with amply commented code that give AI a curated context to work inside, and becomes an assistant to human judgement rather than wrestle control away.

Those guardrails make AI more useful, not less. You describe what you want in plain language, and you stay in the editorial role---judging results, giving feedback, and deciding what's right for your project.

[See our AI guide →](docs/using-ai/){: .btn-secondary .btn-sm}
"
%}

{% include layout/section.html style="warm" %}

## Yes, it's like the gum!

Xanthan gum is a polysaccharide used as a binder and emulsifier---it transforms disparate ingredients into something cohesive and stable. This platform does the same: it binds simple, durable web technologies into a framework for digital scholarship. Text, media, code, and argument become a coherent whole with a long shelf life.

Good infrastructure, like good binding agents, should be reliable, unobtrusive, and built to last. [Read more about our philosophy](about).

{% include layout/section-end.html %}

## Easier done than said.

This is one of those things that takes longer to describe than to do. The guides run long because every step is written out---you shouldn't have to work anything out on your own, or guess what a page means by "commit."

The doing is short. Make a site from one of the starting points, change a line of text, watch it go live. Ten minutes of that will teach you more about how this works than any paragraph here can.

{: style="text-align: right;"}
[Choose a Starter Site →](docs/getting-started/templates){: .btn-primary}
