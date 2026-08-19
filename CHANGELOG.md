# Changelog

All notable changes to Xanthan will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- **Landing page sections**: five components for a homepage that introduces a
  whole project rather than opening a single argument — `layout/home-hero.html`,
  `layout/split-intro.html`, `layout/feature-block.html`, `layout/picks.html`,
  and `layout/link-index.html`, with styles in the new `assets/css/home.css`.
  Each is a full-width band that takes its content from front matter. Documented
  under Landing Page Sections in the component library.
- `layout/picks.html` selects named items from a collection by slug, in the
  order given, in three variants (`strip`, `tiles`, `feature`). Items resolve
  against a declared Jekyll collection, a folder page, or a flat file, so it
  works whatever shape a site's content already has.
- `helpers/find-item.html`, an internal helper for resolving a collection name
  and slug to a page.
- Homepage prompts in the AI documentation, covering both the composed
  magazine-style front page and the plainer header-image-and-grids kind.

### Fixed
- A `baseurl` written with a trailing slash (`/my-site/`) no longer produces
  doubled separators in every path resolved through `helpers/image-path.html`
  and `helpers/link-path.html`. Both forms are natural to write in `_config.yml`
  and both now work.
- `helpers/image-path.html` no longer treats an internal path as an external URL
  just because the filename contains the letters `http`.

## [1.2.0] - 2026-03-04

### Added
- New gallery component and docs updates to support richer visual examples
- Expanded AI-focused documentation and onboarding guidance
- Optional Google Analytics support with safer config patterns for local/private setup
- New docs styling support and layout refinements for `/docs/` pages

### Changed
- Migrated core layout patterns away from Bootstrap toward CSS Grid-based structure
- Renamed `header-image` usage to `page-header` in layout styling patterns
- Improved getting-started workflow, docs index readability, and navigation organization
- Updated template sync/workflow behavior and supporting automation metadata

### Fixed
- Improved link handling with better `baseurl` behavior
- Multiple navigation and docs-link consistency fixes
- Additional styling/spacing cleanup across typography and page sections

## [1.1.0] - 2026-01-04

### Added
- **Documentation auto-sync to templates**: All Xanthan documentation now automatically syncs to template repositories, ensuring docs always match code version
- **Centralized `/docs/` folder**: All documentation organized in clean `/docs/` structure (getting-started, content-design, navigation, scrollstories)
- **Documentation landing page**: New `/docs/index.md` provides organized access to all documentation sections
- **Template sync workflow**: Automated GitHub Actions workflow syncs code, docs, and examples from main Xanthan repo to all template repositories
- **Profile sidebar CSS**: New `sidebar.css` for portfolio-template with proper image sizing and responsive design

### Changed
- **ScrollStory examples location**: Moved from `/scrollstories/examples/` to `/scrollstories/` for cleaner structure
- **Documentation paths**: All internal links updated to use `/docs/` prefix for consistency
- **About and FAQs location**: Kept at root level (not synced to templates) as they're specific to main Xanthan site
- **Navigation structure**: Updated `top-nav.yml` to reflect new `/docs/` paths

### Fixed
- Profile sidebar image sizing issue in portfolio-template
- All internal documentation links updated to new structure

## [1.0.0] - 2026-01-01

- **Added**: First major release of Xanthan! Beginner-friendly web templates and extensive documentation for academics, educators, and students to build professional websites and collaborative projects with GitHub Pages.

- Start here: https://xanthan-web.github.io/


## Future Releases

Starting with 1.1.0, this changelog will document:
- **Added** for new features
- **Changed** for changes in existing functionality
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** for vulnerability patches

[1.2.0]: https://github.com/xanthan-web/xanthan-web.github.io/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/xanthan-web/xanthan-web.github.io/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/xanthan-web/xanthan-web.github.io/releases/tag/v1.0.0
