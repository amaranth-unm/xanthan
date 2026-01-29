---
layout: base
title: Tags
summary: Browse by tags
permalink: /tags/
tag-folders: scrollstories
---

# Tags

<!-- Parse tag-folders parameter (comma-separated list or single folder) -->
{% assign folders_raw = page.tag-folders %}
{% assign folders = folders_raw | split: "," %}

<!-- Collect pages from specified folders -->
{% assign tag_pages = "" | split: "" %}
{% for p in site.pages %}
  {% for folder_raw in folders %}
    {% assign folder = folder_raw | strip %}
    {% assign folder_length = folder | size %}
    {% assign first_part = p.path | slice: 0, folder_length %}
    {% if first_part == folder %}
      {% assign tag_pages = tag_pages | push: p %}
    {% endif %}
  {% endfor %}
{% endfor %}
{% assign tag_pages = tag_pages | sort: "title" %}
{% assign all_tags = "" | split: "" %}
{% for p in tag_pages %}
  {% if p.tags %}
    {% for t in p.tags %}
      {% assign all_tags = all_tags | push: t %}
    {% endfor %}
  {% endif %}
{% endfor %}
{% assign all_tags = all_tags | uniq | sort %}


<div class="tag-list" id="tag-list">
  <a class="tag-badge tag-clear" href="{{ '/tags/' | relative_url }}">All</a>
  {% for tag in all_tags %}
    {% assign tag_count = tag_pages | where_exp: "p", "p.tags contains tag" | size %}
    <a class="tag-badge" href="{{ '/tags/' | relative_url }}?tag={{ tag | url_encode }}" data-tag="{{ tag | downcase }}">{{ tag }} ({{ tag_count }})</a>
  {% endfor %}
</div>


<div id="tag-cards">
  {% include nav/card-grid.html cards=tag_pages show-tags=true tag-data=true %}
</div>

<p id="tag-empty" class="tag-empty" hidden>No pages match this tag.</p>

<script>
  (function () {
    const params = new URLSearchParams(window.location.search);
    const tagParam = params.get('tag');
    const normalized = tagParam ? tagParam.trim().toLowerCase() : '';

    const cards = Array.from(document.querySelectorAll('.tag-card'));
    const heading = document.getElementById('tag-heading');
    const summary = document.getElementById('tag-summary');
    const emptyState = document.getElementById('tag-empty');
    const tagLinks = Array.from(document.querySelectorAll('.tag-badge[data-tag]'));
    const clearLink = document.querySelector('.tag-clear');

    let activeLabel = normalized;
    let shown = 0;

    cards.forEach((card) => {
      const tags = (card.dataset.tags || '').split('|').map((t) => t.trim()).filter(Boolean);
      const match = normalized ? tags.includes(normalized) : true;
      card.style.display = match ? '' : 'none';
      if (match) {
        shown += 1;
      }
    });

    if (normalized) {
      tagLinks.forEach((link) => {
        if (link.dataset.tag === normalized) {
          activeLabel = link.textContent.trim();
          link.classList.add('active');
        }
      });
      if (clearLink) {
        clearLink.classList.remove('active');
      }
      heading.textContent = activeLabel ? `Tagged: ${activeLabel}` : 'Tagged results';
      summary.textContent = shown === 1
        ? 'Showing 1 ScrollStory with this tag.'
        : `Showing ${shown} ScrollStories with this tag.`;
    } else {
      if (clearLink) {
        clearLink.classList.add('active');
      }
    }

    if (normalized && shown === 0) {
      if (emptyState) {
        emptyState.hidden = false;
      }
      summary.textContent = 'No ScrollStories match this tag.';
    }
  })();
</script>
