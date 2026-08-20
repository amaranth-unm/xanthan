#!/usr/bin/env bash
#
# The single source of truth for what core pushes to the starter templates.
#
# The sync used to be spelled out separately inside each job of
# .github/workflows/sync-templates.yml. Four near-identical copies meant they
# drifted: one job selected on the wrong template name, and when the docs
# gained a dependency on _data/gallery.yml no job learned about it, so the
# gallery page would have broken in every template on the next sync.
# Add a path here once and every template gets it.
#
# Usage:  sync-core-files.sh <source-dir> <template-dir> <template-name>
#
# Run it locally against a checkout to see what a sync would do:
#   scripts/sync-core-files.sh . ../class-project-template class-project

set -euo pipefail

SRC="${1:?usage: sync-core-files.sh <source-dir> <template-dir> <template-name>}"
DEST="${2:?usage: sync-core-files.sh <source-dir> <template-dir> <template-name>}"
NAME="${3:?usage: sync-core-files.sh <source-dir> <template-dir> <template-name>}"

RSYNC=(rsync -a --delete)
[ "${VERBOSE:-1}" = "1" ] && RSYNC=(rsync -av --delete)

echo "── syncing core → ${NAME}"

# --- Code libraries. Wholly owned by core; a template never edits these. ------
"${RSYNC[@]}" "$SRC/_includes/"   "$DEST/_includes/"
"${RSYNC[@]}" "$SRC/_layouts/"    "$DEST/_layouts/"
"${RSYNC[@]}" "$SRC/assets/css/"  "$DEST/assets/css/"
"${RSYNC[@]}" "$SRC/assets/js/"   "$DEST/assets/js/"

# milton-snow is a private demo and stays out of the templates. Excluding it
# from the copy is not enough: rsync also protects excluded paths from
# --delete, so a copy that predates the exclusion would sit in the template
# forever, never updated. Two templates had exactly that, and the stale copy
# referenced an include core no longer ships, which broke their builds. Remove
# it from the destination as well as skipping it in the source.
"${RSYNC[@]}" --exclude='milton-snow/' "$SRC/scrollstories/" "$DEST/scrollstories/"
rm -rf "$DEST/scrollstories/milton-snow"

# --- Documentation, including its own root index.md --------------------------
"${RSYNC[@]}" "$SRC/docs/" "$DEST/docs/"

# Assets the shipped docs reference. These are part of the docs, not template
# content: docs/getting-started/gallery.md reads _data/gallery.yml and renders
# the screenshots, and the scrollstory pages use the shared backgrounds.
mkdir -p "$DEST/_data" "$DEST/assets/images"
cp "$SRC/_data/gallery.yml" "$DEST/_data/gallery.yml"
"${RSYNC[@]}" "$SRC/assets/images/gallery/"      "$DEST/assets/images/gallery/"
"${RSYNC[@]}" "$SRC/assets/images/backgrounds/"  "$DEST/assets/images/backgrounds/"

# --- Dependency and housekeeping files ---------------------------------------
cp "$SRC/Gemfile"      "$DEST/Gemfile"
cp "$SRC/.gitignore"   "$DEST/.gitignore"
cp "$SRC/CHANGELOG.md" "$DEST/XANTHAN_CHANGELOG.md"

# --- Per-template extras -----------------------------------------------------
case "$NAME" in
  scrollstory)
    # The Forest demo *is* this starter's front page. A scrollstory template
    # whose homepage is a page about scrollstories buries the thing it is
    # demonstrating one click deep, so the essay lands at the repo root.
    # Its includes reference images/ relative to themselves, which is why the
    # pictures go to a root images/ rather than staying alongside.
    cp "$SRC/scrollstories/forest/index.md" "$DEST/index.md"
    "${RSYNC[@]}" "$SRC/scrollstories/forest/images/" "$DEST/images/"
    ;;
esac

# nav-profile.yml is core's sample profile, needed by the nav demo pages. The
# portfolio template is excluded on purpose: there the file is the user's own
# profile ("Your Name", a bio to replace), and syncing would overwrite it.
case "$NAME" in
  portfolio) : ;;
  *) cp "$SRC/_data/nav-profile.yml" "$DEST/_data/nav-profile.yml" ;;
esac

# --- Never synced ------------------------------------------------------------
# _config.yml          — title, baseurl and theme are the template's own
# _data/nav-top.yml    — each template has its own navigation
# _data/nav-sections.yml
# assets/images/*      — apart from gallery/ and backgrounds/ above
# anything at the root — index.md, about.md and friends are template content

echo "✓ ${NAME} synced"
