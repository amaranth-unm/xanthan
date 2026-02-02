---
title: Using AI Assistance for Customization
layout: xanthan
date: 2024-12-30
---

# Using AI Assistance for Customization

{% include nav/scrollspy-toc.html %}

If you're working locally with VS Code, you have access to AI coding assistants that can help you customize your site. These tools can translate what you want ("make the spacing bigger") into the code changes needed. You don't need to know CSS or HTML—you just need to describe what you want to change.

## What AI Assistants Can Do

AI coding assistants like GitHub Copilot, Cursor, or Claude can:

- Modify colors, fonts, and spacing based on plain language requests
- Explain what existing code does
- Suggest fixes when something isn't working
- Help you understand error messages
- Generate code snippets for new features

Think of them as a knowledgeable colleague looking over your shoulder, ready to help when you need it.

## Getting Started

### If you're using VS Code

1. **Install an AI assistant:**
   - **GitHub Copilot** - Free for students and educators ([apply here](https://education.github.com/))
   - **Continue** - Free and open source ([install from VS Code extensions](https://marketplace.visualstudio.com/items?itemName=Continue.continue))
   - **Cursor** - AI-first code editor based on VS Code ([download](https://cursor.sh/))

2. **Open your project** in VS Code (see [Working Locally](working-locally) guide)

3. **Start making changes** - The AI will suggest code as you type, or you can ask it questions

## How to Ask for What You Want

The key is being specific about what you want to change and where. Here are effective ways to communicate with AI assistants:

### Method 1: Inline Comments

Open the CSS file you want to modify (like `assets/css/base.css`) and write a comment describing what you want:

```css
/* Make the spacing between list items larger */
```

The AI will suggest code to add below your comment. Press Tab to accept the suggestion.

### Method 2: Chat Interface

Most AI assistants have a chat panel. You can ask questions like:

- "How do I make all the headings green?"
- "Can you increase the spacing between paragraphs?"
- "Make the page background a light blue color"
- "What does this CSS rule do?" (select code first)

### Method 3: Highlight and Ask

Select existing code and ask the AI to modify it:
- "Make this font size bigger"
- "Change this color to match the sage green used elsewhere"
- "Add more padding here"

## Real Examples

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

## Best Practices

### Be Specific About Location

Instead of: "Make text bigger"
Try: "Make paragraph text bigger in the main content area"

Instead of: "Change the color"
Try: "Change the navigation bar background color to dark blue"

### Use Visual References

If you see something you like on your site:
- "Make my headings the same color as the links"
- "Use the same padding as the card components"
- "Match the spacing used in the navigation menu"

### Ask for Explanations

Don't just accept code blindly. Ask:
- "Why did you choose this value?"
- "What does this property do?"
- "Are there any downsides to this approach?"

Understanding helps you make better decisions and learn as you go.

### Test Changes Immediately

After the AI suggests changes:
1. Save the file
2. Refresh your browser
3. Check if it looks right
4. If not, tell the AI what needs adjustment: "That's too much, make it smaller"

## Working with Xanthan's Design System

Xanthan uses CSS variables (like `var(--spacing-md)`) for consistent design. When asking for changes, you can:

**Reference existing variables:**
> "Use the accent-primary color for all buttons"

**Ask about the system:**
> "What color variables are available?"
> "What spacing sizes can I use?"

**Request system-aware changes:**
> "Increase spacing but stay consistent with the design system"

The AI understands Xanthan's structure and will suggest changes that fit the existing patterns.

## Common Customizations to Try

Once you're comfortable, try these common requests:

### Typography
- "Make body text use a serif font"
- "Increase line spacing in paragraphs"
- "Make h2 headings bold"

### Colors
- "Create a dark mode theme"
- "Change the accent color to teal"
- "Make links a brighter blue"

### Spacing
- "Add more space around images"
- "Reduce the gap between sections"
- "Increase padding in navigation items"

### Layout
- "Make the content area wider"
- "Center the page content"
- "Add a border around code blocks"

## When Things Don't Work

If the AI's suggestion doesn't do what you want:

1. **Be more specific:** "That's not quite right. I want the spacing *between* paragraphs, not inside them"

2. **Describe what's wrong:** "The color is too dark, can you make it lighter?"

3. **Ask for alternatives:** "What are other ways to achieve this effect?"

4. **Request an explanation:** "Why isn't this working the way I expected?"

5. **Undo and try again:** In VS Code, press `Ctrl+Z` (or `Cmd+Z` on Mac) to undo changes

## Building Confidence

Start small. Make one simple change, like adjusting a color or spacing value. See it work. Make another change. Each small success builds your understanding and confidence.

You don't need to become a CSS expert. You just need to know what you want your site to look like, and the AI can help you get there. The code is just a tool—your vision and judgment about what looks good are what matter.

### What You're Actually Learning

Even when using AI assistance, you're learning:
- How CSS files are organized
- Which files control which aspects of your site
- How to describe visual changes clearly
- How to test and iterate on changes
- The relationship between code and visual output

These skills transfer. What feels unfamiliar now will become routine.

## Privacy Note

When using AI assistants:
- Your code is sent to the AI service for processing
- Don't include sensitive information (passwords, API keys) in files where you're using AI
- Review suggested changes before accepting them
- Most educational licenses and free tiers are appropriate for personal/academic sites

## Next Steps

Ready to try it?

1. Set up your local development environment ([Working Locally](working-locally))
2. Install an AI assistant in VS Code
3. Open a CSS file (like `assets/css/base.css`)
4. Try asking for one simple change
5. Watch it work

The tools are here to help you. You're not cheating by using them—you're working efficiently and learning along the way.
