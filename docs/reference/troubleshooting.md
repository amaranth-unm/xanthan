---
title: Troubleshooting
layout: xanthan
date: 2024-12-02
---

# Troubleshooting

{% include nav/scrollspy-toc.html %}

Having problems? This guide covers common issues and how to fix them.


## Images Not Showing

**Problem:** Your image code looks correct but the image doesn't appear.

**Common causes:**

### 1. File path doesn't match actual location

Check:
- Where is your actual image in your repository?
- Does your code point to the EXACT location with exactly matching folder and filename?

```liquid
{%raw%}{% include images/figure.html
  image-path="images/photo.jpg"   ← Must match actual location
%}{%endraw%}
```

### 2. Filename doesn't match EXACTLY

File names are case-sensitive! Check:
- `photo.jpg` ≠ `Photo.jpg` ≠ `photo.JPG`
- Extensions: `.jpg`, `.JPG`, `.jpeg`, `.png` are all different
- Spaces in filenames can cause issues (avoid them!)

**Fix:** Make sure your code matches the filename EXACTLY, including capitalization and extension.

### 3. Relative vs. Absolute paths

{% include typography/alert.html
  class="warning"
  title="This is the most common image problem"
  text="Paths can be **absolute** or **relative**, and mixing them up is almost always the issue.

- **Absolute path** (starts with `/`): `/assets/images/photo.jpg` --- works from any page, because it starts from the site root. **Use this by default.**
- **Relative path** (no leading `/`): `images/photo.jpg` --- relative to the current page's folder. A path that works on one page may break on another if the image isn't in the right place relative to that page.

Paths are also case-sensitive: `Photo.jpg` is not the same as `photo.jpg`."
%}


---

## Site Not Updating / Build Failed

**Problem:** You made changes but your site isn't updating after 5+ minutes, or GitHub Actions shows a build failure.

**Most common cause:** A syntax error is preventing Jekyll from building your site.

### Step-by-step fix:

**Step 1: Find the error**
- In your repository, click the **Actions** tab (it's in the top menu next to "Pull requests")
- Click on the most recent workflow run (the top item in the list)
- You'll see steps with checkmarks ✓ or X marks
- Click on the step called **"Build with Jekyll"** to expand it
- Scroll through the output to find text in red - that's your error message

**Step 2: Understand what it's telling you**
The error message usually looks like:
```
Liquid Exception: Liquid syntax error (line 42): Expected end_of_string but found...
  in /home/runner/work/my-site/guides/getting-started.md
```

This tells you:
- **What's wrong**: "Liquid syntax error" (missing a `%}` or similar)
- **Where**: Line 42 in the file `guides/getting-started.md`

**Step 3: Go to that file and fix it**
- In GitHub, click the **Code** tab to go back to your files
- Navigate to the file mentioned (like `guides/getting-started.md`)
- Click the pencil icon (Edit) in the upper right
- Go to the line number mentioned (GitHub shows line numbers on the left)
- Look for the problem:
  - Missing closing `%}` on an include?
  - Mismatched quotes (`"` vs `'`)?
  - Typo in the front matter?
- Fix the error

**Step 4: Save your fix**
- Scroll to the bottom of the edit page
- Click the green **"Commit changes"** button
- GitHub will automatically rebuild your site

**Step 5: Check if it worked**
- Go back to the **Actions** tab
- Wait for the new build to finish (takes 1-2 minutes)
- Look for a green checkmark ✓
- If it's green, your site is live!
- If it's still red ✗, repeat from Step 1 with the new error message

---

---

## Syntax Errors in Include Blocks

**Problem:** Your component code isn't working.

### Common mistakes:

#### 1. Missing or incorrect delimiters

❌ **Wrong:**
```liquid
{%raw%}{ include figure.html %}           ← Missing %
{& include figure.html %}          ← Wrong symbol
{% include images/figure.html }           ← Missing %{%endraw%}
```

✅ **Correct:**
```liquid
{%raw%}{% include images/figure.html %}{%endraw%}
```

#### 2. Mismatched quotes

❌ **Wrong:**
```liquid
{%raw%}{% include images/figure.html
  caption="This is broken'        ← Mismatch " and '
  width='50%"                     ← Mismatch ' and "
%}{%endraw%}
```

✅ **Correct:**
```liquid
{%raw%}{% include images/figure.html
  caption="This works correctly"
  width="50%"
%}{%endraw%}
```

#### 3. Missing closing tag

❌ **Wrong:**
```liquid
{%raw%}{% include images/figure.html
  image-path="/assets/images/photo.jpg"{%endraw%}
```

✅ **Correct:**
```liquid
{%raw%}{% include images/figure.html
  image-path="/assets/images/photo.jpg"
%}                                ← Don't forget closing %}{%endraw%}
```

---

## YAML Front Matter Errors

**Problem:** Page won't build due to front matter issues.

Every page needs front matter at the very top:

✅ **Correct:**
```yaml
---
title: My Page
layout: xanthan
date: 2024-12-02
---

# Page content starts here
```

### Common mistakes:

❌ Must start on first line (no blank lines before `---`)
❌ Must have three dashes `---` not two `--`
❌ Must close with `---` on its own line
❌ Indentation matters in YAML (use spaces, not tabs)


## Links Not Working

**Problem:** Links to other pages return 404 errors.

### Check:

1. **File extension in URL:**
   - Link to `/about` not `/about.md`
   - Jekyll converts `.md` to `.html` automatically

2. **Correct path:**
   ```markdown
   ❌ [Link](guides/getting-started.md)
   ✅ [Link](/guides/getting-started)
   ✅ [Link](guides/getting-started)
   ```

3. **Baseurl issues:**
   - If using a project site (not username.github.io), check `_config.yml`
   - Baseurl should be `/repository-name/`

---

## Styles Not Applying

**Problem:** CSS changes aren't showing up.

1. **Hard refresh your browser:**
   - Windows/Linux: `Ctrl + Shift + R`
   - Mac: `Cmd + Shift + R`

2. **Check file location:**
   - CSS files should be in `/assets/css/`
   - Linked correctly in `_includes/page-header.html`

3. **CSS syntax errors:**
   - Missing semicolons `;`
   - Unclosed brackets `}`
   - Invalid property names

---

## Still Stuck?

### Before asking for help:

1. **Check the error message** - It usually tells you exactly what's wrong
2. **Compare your code** to working examples on the component pages
3. **Look for typos** - Most issues are small syntax errors
4. **Try removing recent changes** - Did it work before? What changed?

### Getting help:

- **[Open an issue](https://github.com/xanthan-web/xanthan-web.github.io/issues)** on GitHub with:
  - Description of the problem
  - What you've tried
  - Error messages (if any)
  - Link to your repository (if public)

- **Check existing issues** - Someone might have already solved your problem
