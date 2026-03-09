---
layout: xanthan
title: FAQs about Xanthan
date: 2025-12-31
summary: Common questions about Xanthan, including why use it, how much coding is needed, and how to get started building your own site.
---

# FAQs

- [What is Xanthan?](#what-is-xanthan)
- [Where did Xanthan come from?](#where-did-xanthan-come-from)
- [Why not use Wix or Squarespace?](#why-not-use-wix-or-squarespace)
- [Can this really replace ESRI StoryMaps?](#can-this-really-replace-esri-storymaps)
- [Why Build a Personal Website?](#why-build-a-personal-website)
- [Technology is always changing. Why spend time on this?](#technology-is-always-changing-why-spend-time-on-this)
- [How much coding do I need to learn?](#how-much-coding-do-i-need-to-learn)
- [How long will it take to actually create my own site?](#how-long-will-it-take-to-actually-create-my-own-site)
- [Why is Xanthan open source?](#why-is-xanthan-open-source)
- [Can I request a feature or report a bug?](#can-i-request-a-feature-or-report-a-bug)
- [How can I contribute to Xanthan?](#how-can-i-contribute-to-xanthan)

---

### What is Xanthan?

Xanthan is a collection of ready-to-use website starter kits designed specifically for historians, educators, and researchers who want to publish their work online without needing to be a web developer.

Think of Xanthan as a set of pre-built foundations for different kinds of websites. Instead of starting from scratch or wrestling with complicated web software, you pick the starter kit that matches what you want to build—like a personal portfolio, a class project, or a digital story—and then customize it with your own content and design preferences.

**What makes Xanthan different:**
- **No installation required.** Everything runs through GitHub, a free platform that both stores your files and publishes your website.
- **Plain text editing.** You write in simple Markdown (like writing an email with a few formatting shortcuts), not complex code.
- **Built for sustainability.** Your site is made of simple files that will work decades from now, not locked into a platform that might disappear.
- **Designed for scholars.** Features like citations, image galleries, and narrative layouts are built in and ready to use.

You don't need to know how to code to use Xanthan. If you can edit a text document and follow step-by-step instructions, you can build and maintain your own website.

---


### Where did Xanthan come from?

Xanthan grew out of classroom experiments, not any particular intention.

It started with a pragamtic question: how could students share pre-class reflections easily with each other outside a LMS that was about to be retired? A GitHub repository was the experiment.

The student response was the surprise. Studens loved the openness, the way we could engage with their reflections in class. They wanted to use it for their final projects. And then they wanted a website to collect their essays, just like for daily assignments. 

Each semester, and new courses, led to new challenges, solutions, failures, improvements. After a while, everything came togehter. You can read [a bit more about the journey](https://fredgibbs.net/about).

---


### Why not use Wix or Squarespace?

**The honest answer:** Wix and Squarespace are easier to start with. They have drag-and-drop interfaces, instant previews, and polished templates you can customize in minutes. If you need a quick website and don't care about learning how it works, they're good options.

**So why choose Xanthan instead?** Because Xanthan prioritizes different values:

**Ownership.** With Wix or Squarespace, your content lives on their servers in their proprietary format. If you want to leave, you can't take your site with you—you have to rebuild from scratch. With Xanthan, you own the files. Your entire site is text files in a repository you control. Want to move to a different host? Export and deploy anywhere in minutes.

**No subscription fees.** Xanthan sites are free to host on GitHub Pages forever. Wix and Squarespace require ongoing payments ($16-$40/month) to remove ads, use a custom domain, or access collaboration features. Over a few years, that's hundreds or thousands of dollars.

**Learning real skills.** Wix teaches you how to use Wix. Xanthan teaches you Markdown, HTML, CSS, Git, and web fundamentals—skills that transfer to any digital project you'll ever work on. You build digital literacy while building your site.

**Collaboration without paywalls.** Multi-user collaboration on commercial platforms requires expensive team plans. GitHub's collaboration tools are free and industry-standard. Students, colleagues, and contributors can work together on your site without subscription barriers.

**Stability and longevity.** Commercial platforms can change pricing, shut down features, or disappear entirely (remember GeoCities? Google Sites Classic?). Xanthan is built on HTML, CSS, and Markdown—technologies that have worked for decades and will keep working for decades more.

**The tradeoff:** Xanthan has a learning curve. You'll spend 10-15 minutes deploying your first site, then an hour or two learning how to customize it. That investment pays off with complete control, zero ongoing costs, and skills you'll use for years.

**Who should use Wix/Squarespace instead:**
- You need a site this week and don't care about learning
- You're comfortable with monthly fees
- You don't plan to maintain the site long-term
- You won't need to migrate your content elsewhere

**Who should use Xanthan:**
- You want to own your content and infrastructure
- You value learning how things work
- You're building something meant to last years
- You want free hosting with no ads or subscriptions
- You're willing to invest a few hours to gain independence

---

### Can this really replace ESRI StoryMaps?

**The honest answer:** Not yet—but for many projects, yes.

**What Xanthan's ScrollStories can do now:**

- Immersive scrolling narratives with background images
- Text that appears and disappears as you scroll
- Image switching and transitions
- Side-scrolling layouts for visual sequences
- Juxtapose image comparisons
- Complete control over typography, color, pacing

For **narrative-driven stories** without complex data visualization, Xanthan gives you everything you need. Check out our [ScrollStory examples](../scrollstories/) to see what's possible.

**What ESRI StoryMaps does better (for now):**

- **Drag-and-drop interface.** StoryMaps has a visual editor; Xanthan requires editing text files and code. There's a learning curve.
- **Built-in maps and data layers.** StoryMaps integrates ArcGIS mapping tools directly. With Xanthan, you use Leaflet.js (open-source mapping library) and build maps yourself.
- **Rich media embeds.** StoryMaps makes it trivial to embed videos, 3D models, and interactive charts. Xanthan requires more manual work.

**Why choose Xanthan anyway?**

Even with fewer features, Xanthan offers significant advantages:

**You own it.** Your story lives in a repository you control, not locked in ESRI's platform. Export it anytime, host it anywhere, keep it forever—even if ESRI changes policies or pricing.

**It's free.** ESRI StoryMaps requires an ArcGIS subscription (often institutional). GitHub Pages hosting is free with no limits. Your story stays online without ongoing fees.

**Open and collaborative.** Anyone can fork your repository, suggest improvements, or build on your work. StoryMaps are individual and proprietary. Xanthan stories can be true collaborative scholarship.

**Built to last.** Your ScrollStory is HTML and CSS files. They'll work in browsers 20 years from now without maintenance. StoryMaps depend on ESRI's servers and software continuing to exist.

**Community-driven development.** This is where the parallel to **QGIS vs ArcGIS** matters. QGIS started with fewer features than ArcGIS but has grown through community contributions into a powerful, professional alternative. Xanthan's ScrollStories are following the same path. As the community contributes components—new map integrations, chart libraries, interactive elements—the gap will close. And because it's open source, improvements benefit everyone.

**The learning curve question:**

"But StoryMaps is easier!" Yes, the interface is easier. But creating a good StoryMap still requires learning: how to structure a narrative, which map layers to use, how to pace revelations. You're learning *a tool and a form*.

With Xanthan, you're also learning the underlying web technologies. It takes longer initially, but you gain skills that work everywhere, not just in one platform.

**Bottom line:**

- **Choose StoryMaps if:** You need complex data visualizations, maps are central to your story, and you have institutional ArcGIS access.
- **Choose Xanthan ScrollStories if:** Your story is narrative-driven, you want to own your work, you value learning web skills, and you're willing to invest time for independence and sustainability.

And if you build something you wish Xanthan could do better? Contribute it back. That's how the gap closes.

---

### Why Build a Personal Website?
Many people wonder if they need a personal website in an age of social media, academic platforms, and portfolio services. Here's why having your own site matters:

**Own your content and your presence.** Platforms like Academia.edu, Medium, or LinkedIn can change their rules, shut down, or lock you out. Your own website gives you complete control over your work and how it's presented.

**Create a professional hub.** Instead of scattering your work across multiple platforms, a personal site becomes the central, authoritative source for your projects, writing, CV, and contact information.

**Showcase work your way.** Present your projects exactly how you envision them, not constrained by platform templates or character limits. Tell your story the way you want it told.

**Learn valuable skills.** Building and maintaining your own site teaches you how the web actually works—skills that are increasingly valuable in any field.

Ready to build? Check out the [Getting Started guide](docs/getting-started/).

---


### Technology is always changing. Why spend time on this?
People often argue that learning web tools is futile because technology changes so fast. But **static site tools like Xanthan actually represent the opposite trend**—they embrace **stability, simplicity, and longevity** in web development.

1. **They rely on enduring web fundamentals.**
   Static sites are built with plain HTML, CSS, and sometimes minimal JavaScript—technologies that have been **stable for decades**. Unlike many web frameworks that rise and fall in popularity, these core technologies don’t go away. Learning them gives you skills that will still matter far in the future.

2. **They resist unnecessary complexity.**
   Modern web development often piles on layers of abstraction (frameworks, dependencies, servers) to function at all. Static sites intentionally strip that away. You don't need an interface to edit your site; you edit simple plaintext files that you can open anywhere. This simplicity is a form of *technological resilience*.

3. **They model sustainable design principles.**
   By focusing on lightweight, portable content that can last indefinitely, static sites embody the ideals of digital preservation. They don’t depend on a proprietary platform or a server that might vanish. 

4. **They teach timeless design thinking.**
   Learning to use a static site template is also learning how to structure information clearly, design for readability, and separate content from presentation—all principles that extend far beyond any one technology stack.

---


### How much coding do I need to learn?
None! You will need to learn Markdown, and you'll probably want to learn a little about how HTML and CSS work together to "style" a website. It's not really "coding" per se, but there is some syntax to learn that enables you to design your site however you'd like.

---

### How long will it take to actually create my own site?
It take 10-15 minutes to read through and follow the directions for creating a new site from one of the Xanthan templates. At that point, you'll have your own functioning website that you can start to customize to fit your needs.

As with doing anything for the first time, there is a startup cost with learning a new workflow. After you get your site working, it takes about an hour to really make your site look different from the sample template because you will be learning where files are, where to make changes in the files, and deciding how to organize information on your pages and site. But it's fast and easy after you get familiar with how things work. This is the investment that building your own site requires, but it pays great dividends later on.

---

### Why is Xanthan open source?

Xanthan is intentionally open source to leverage the collective knowledge and skills of digital public history practitioners. Rather than keeping expertise siloed within institutions or commercial platforms, open source development allows historians, educators, and developers to collaborate, share solutions, and collectively expand our capabilities.

This collaborative approach means that improvements made by one person benefit everyone. When someone solves a layout problem, adds a new feature, or clarifies documentation, that knowledge becomes available to the entire community. It's a model that aligns with the values of public history itself: making knowledge accessible, building shared resources, and working together to tell better stories.

By contributing to Xanthan, you're not just improving a tool—you're participating in a community effort to make web publishing more accessible and sustainable for scholars and public historians.

---

### Can I request a feature or report a bug?

Absolutely! GitHub provides an issue tracker that makes it easy to report bugs, request features, or ask questions about Xanthan.

**To submit an issue:**
1. Visit the [Xanthan GitHub repository](https://github.com/xanthan-web/xanthan-web.github.io)
2. Click the "Issues" tab
3. Click the green "New Issue" button
4. Describe your bug or feature request with as much detail as possible

**What makes a good issue:**
- Clear, descriptive title (e.g., "Navigation menu doesn't work on mobile" instead of "Bug")
- Steps to reproduce the problem (for bugs)
- What you expected to happen vs. what actually happened
- Screenshots or examples when relevant
- Links to your repository if applicable

Don't worry about being too detailed—the more information you provide, the easier it is for us to help. And check existing issues first; someone might have already reported the same thing!

---

### How can I contribute to Xanthan?

We'd love your help making Xanthan better! There are several ways to contribute:

**Report bugs or suggest features.** If you encounter issues or have ideas for improvements, open an issue on the [Xanthan GitHub repository](https://github.com/xanthan-web/xanthan-web.github.io/issues). Clear descriptions and examples help us understand and address your feedback.

**Improve documentation.** Notice something unclear in the guides? Found a typo? Documentation improvements are incredibly valuable. You can suggest edits or submit pull requests to help others learn more easily.

**Share your examples.** Built something cool with Xanthan? Share your site! Real-world examples help others see what's possible and inspire new use cases.

**Contribute code.** If you're comfortable with Jekyll, CSS, or JavaScript, we welcome pull requests that fix bugs, add features, or improve performance. Check the issues page for good first contributions.

**Spread the word.** Tell colleagues, students, or friends who might benefit from building their own site. The more people using Xanthan, the better it becomes.

Start by visiting the [Xanthan repository](https://github.com/xanthan-web/xanthan-web.github.io) to see current issues and contribution guidelines.

