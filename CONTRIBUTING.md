# Contributing to Xanthan

Thank you for your interest in improving Xanthan! We welcome contributions from educators, historians, developers, and anyone passionate about sustainable digital scholarship.

## Ways to Contribute

### 🐛 Report Bugs
Found something broken? [Open an issue](https://github.com/xanthan-web/xanthan/issues) with:
- What you expected to happen
- What actually happened
- Steps to reproduce the issue
- Your browser and operating system

### 💡 Suggest Features
Have an idea for a new component or improvement? [Start a discussion](https://github.com/xanthan-web/xanthan/discussions) first to get feedback before building it. This helps ensure your contribution aligns with the project's goals and avoids duplicate work.

### 📝 Improve Documentation
Documentation improvements are some of the most valuable contributions! You can:
- Fix typos or clarify instructions
- Add examples or screenshots
- Write tutorials or guides
- Improve existing explanations

### 🎨 Submit New Components or Themes
Create pull requests with:
- New layouts, themes, or reusable components
- Example usage and clear documentation
- Code that follows existing patterns for consistency

## Development Workflow

1. **Fork the repository** to your GitHub account
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/xanthan.git
   cd xanthan
   ```
3. **Create a branch** for your changes:
   ```bash
   git checkout -b my-improvement
   ```
4. **Make your changes** and test them thoroughly
   - Test in GitHub Pages or locally with Jekyll/Docker
   - Verify all links work and documentation is clear
5. **Commit** with clear messages describing what and why:
   ```bash
   git commit -m "Add new carousel component with documentation"
   ```
6. **Push** to your fork:
   ```bash
   git push origin my-improvement
   ```
7. **Open a Pull Request** from your branch to `xanthan-web/xanthan:main`

## Pull Request Guidelines

- **One feature per PR** - Keeps reviews focused and changes easier to understand
- **Test your changes** - Verify they work in GitHub Pages and don't break existing functionality
- **Update documentation** - If you add features, document them with examples
- **Describe your changes** - Explain what you changed and why in the PR description
- **Keep it simple** - Follow Xanthan's philosophy of simplicity and accessibility

## Code Style

### HTML/Liquid Templates
- Follow existing include patterns in `_includes/`
- Use descriptive parameter names
- Add comments explaining non-obvious functionality
- Keep includes focused on single responsibilities

### CSS
- Use CSS variables for colors, spacing, and fonts
- Comment complex selectors or non-obvious styles
- Follow the two-tier color system (named colors → semantic variables)
- Test responsive behavior on mobile and desktop

### Markdown
- Use clear headings and structure
- Include code blocks with syntax highlighting
- Provide working examples users can copy-paste
- Write in an accessible, friendly tone

### Documentation
- Write for beginners - assume no prior web development knowledge
- Explain both "what" and "why"
- Include screenshots where helpful
- Test all instructions by following them yourself

## Testing Your Changes

Before submitting a PR:
1. **Build locally** with Jekyll or Docker to catch errors
2. **Check all links** to ensure nothing is broken
3. **Test responsive design** on different screen sizes
4. **Verify examples work** by copying and pasting your own code
5. **Review the diff** to ensure only intended changes are included

## Questions?

Not sure about something? Have questions before starting?
- [Ask in Discussions](https://github.com/xanthan-web/xanthan/discussions) - We're happy to help!
- Check existing [Issues](https://github.com/xanthan-web/xanthan/issues) and [Pull Requests](https://github.com/xanthan-web/xanthan/pulls)
- Review the [documentation](https://xanthan-web.github.io/xanthan/) for context

## Code of Conduct

Be kind, respectful, and constructive. Xanthan is built for teaching and learning - we're all here to make digital scholarship more accessible.

## License

By contributing, you agree that your contributions will be licensed under the [GPL-3.0 License](LICENSE). This ensures all improvements to Xanthan remain open and free for everyone.

---

Thank you for helping make Xanthan better! Every contribution, no matter how small, makes a difference.
