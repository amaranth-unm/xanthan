---
title: AI Tips
layout: xanthan
date: 2026-01-25
---

# Tips for Using AI Assistants in Xanthan

## Getting Started

### If you're using VS Code

1. **Install an AI assistant:**
   - **GitHub Copilot** - Free for students and educators ([apply here](https://education.github.com/))
   - **Continue** - Free and open source ([install from VS Code extensions](https://marketplace.visualstudio.com/items?itemName=Continue.continue))
   - **Cursor** - AI-first code editor based on VS Code ([download](https://cursor.sh/))

2. **Open your project** in VS Code (see [Working Locally](working-locally) guide)

3. **Start making changes** - The AI will suggest code as you type, or you can ask it questions


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

## When Things Don't Work

If the AI's suggestion doesn't do what you want:

1. **Be more specific:** "That's not quite right. I want the spacing *between* paragraphs, not inside them"

2. **Describe what's wrong:** "The color is too dark, can you make it lighter?"

3. **Ask for alternatives:** "What are other ways to achieve this effect?"

4. **Request an explanation:** "Why isn't this working the way I expected?"

5. **Undo and try again:** In VS Code, press `Ctrl+Z` (or `Cmd+Z` on Mac) to undo changes