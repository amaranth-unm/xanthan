---
title: AI Examples
layout: xanthan
date: 2026-01-25
---

# Examples of AI Assistance

Here are actual requests you can make and what happens:

### Example 1: Adjust List Spacing

**What to say:**
> "Make the spacing between list items larger"

**What the AI does:**
Opens `assets/css/typography.css` and modifies:
```css
.container li {
  margin: 0 0 var(--spacing-md) 0;  /* AI changes var(--spacing-xs) to var(--spacing-md) */
}
```

### Example 2: Change Heading Colors

**What to say:**
> "Make all h1 headings green"

**What the AI does:**
In `assets/css/typography.css`:
```css
h1 {
  color: #228B22;  /* AI adds or modifies the color property */
}
```

### Example 3: Adjust Font Size

**What to say:**
> "Make the base font size slightly larger"

**What the AI does:**
In `assets/css/typography.css`:
```css
html, body {
  font-size: 1.1rem;  /* AI changes from 1.05rem to 1.1rem */
}
```

### Example 4: Understanding Existing Code

**What to say:**
> "What does this code do?" (after selecting some CSS)

**What the AI explains:**
> "This CSS rule sets the base font size to 1.05rem (slightly larger than the browser default of 16px) and uses the Source Sans 3 font family for all body text. The line-height of 1.6 creates comfortable spacing between lines."