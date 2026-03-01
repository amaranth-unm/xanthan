# Image Optimization Guide

This guide helps you optimize images for your Xanthan site to improve loading times.

## Why Optimize Images?

Large image files (5–6MB) significantly slow down page loading. Optimized images:
- Load 10–20x faster
- Use less bandwidth
- Improve user experience on mobile devices
- Improve SEO rankings

## Installation

### Install ImageMagick

**macOS:**
```bash
brew install imagemagick
```

**macOS 12 (Monterey) — If you encounter libraw checksum errors:**
```bash
# Install ImageMagick from pre-built binary instead
curl -O https://imagemagick.org/archive/binaries/ImageMagick-arm64-apple-darwin20.1.0.tar.gz
sudo tar xzf ImageMagick-arm64-apple-darwin20.1.0.tar.gz -C /opt/
export PATH="/opt/ImageMagick-7.1.1/bin:$PATH"
# Add to ~/.bash_profile or ~/.zshrc to make permanent
```

**Windows:**
1. Download from [imagemagick.org/script/download.php](https://imagemagick.org/script/download.php)
2. Run the installer
3. Use Git Bash or WSL to run the script

Verify installation:
```bash
convert --version
```

## Using the Optimization Script

### Step 1: Preview First (Recommended)

From the project root directory, always preview changes first:

```bash
bash scripts/optimize-images.sh --preview
```

This shows what would be optimized **without modifying any files**. Review the output to ensure the estimated savings look reasonable.

### Step 2: Run the Optimization

Once you're confident about the changes:

```bash
bash scripts/optimize-images.sh
```

The script will:
- Create a timestamped backup of your original images
- Process all image subfolders under `assets/images/` in-place (by default)
- Automatically convert PNG → JPG when no transparency is present
- Automatically skip already-optimized images
- Show before/after file sizes

**Specifying image directories**

By default the script looks in `assets/images/`. Use `--base-dir` to target a different location — or multiple locations, which is useful for class project sites where each student has their own image folder:

```bash
# Process a different directory
bash scripts/optimize-images.sh --base-dir assets/photos

# Process multiple student directories explicitly
bash scripts/optimize-images.sh \
  --base-dir students/alice/images \
  --base-dir students/bob/images \
  --base-dir students/carol/images
```

**Recursive search**

For class project sites where images are scattered across many student folders, use `--recursive` to find every image-containing directory within a base path automatically:

```bash
# Finds essays/essay1/images/, essays/essay2/images/, etc.
bash scripts/optimize-images.sh --base-dir essays/ --recursive

# Or scan the whole project
bash scripts/optimize-images.sh --base-dir . --recursive
```

`--recursive` discovers any directory containing image files at any depth within the base dir, regardless of what the folder is named.

To process only one subfolder within a base directory:
```bash
bash scripts/optimize-images.sh --folder backgrounds
bash scripts/optimize-images.sh --base-dir students/alice/images --folder portraits
```

### Step 3: Verify Results

Review the output summary showing how much space was saved. The script displays:
- Files that were optimized (with size reduction)
- Files that were already optimized and skipped

### Step 4: Test Your Site

```bash
bundle exec jekyll serve
```

Visit http://localhost:4000 and verify all images display correctly.

### Step 5: Keep or Delete Backup

Your originals are safely backed up in `assets/images/backup-TIMESTAMP/`. You can:
- Keep the backup for a few days to ensure everything works on the live site
- Delete once confirmed: `rm -rf assets/images/backup-*`

## Quick Reference

### Image Size Guidelines

| Image Type | Max Width | Quality | Use Case |
|------------|-----------|---------|----------|
| Hero/Header images | 2000px | 85% | Full-width background images |
| General content | 1600px | 85% | Page images, project images |
| Portraits/thumbnails | 1200px | 85% | Team photos, small thumbnails |

### Common Commands

**Check image dimensions:**
```bash
identify -format "%wx%h %f\n" assets/images/*/*.png
```

**Check file sizes:**
```bash
du -sh assets/images/*
```

**Manually resize a single image:**
```bash
convert input.png -resize '1200x>' -quality 85 output.jpg
```

**Process with custom settings:**
```bash
bash scripts/optimize-images.sh --max-edge 1200 --quality 80
bash scripts/optimize-images.sh --folder backgrounds --max-edge 2000
bash scripts/optimize-images.sh --base-dir students/alice/images --folder photos --width 800
```

## Updating Markdown References After PNG → JPG Conversion

If the script converts any PNG files to JPG, it logs the conversions to `png_to_jpg_conversions.txt`. Run the companion script to update references in your markdown files:

```bash
bash scripts/update-image-refs.sh
```

Review changes with `git diff` before committing.

## Troubleshooting

**"convert: command not found"**
- ImageMagick is not installed. Follow installation instructions above.

**I want to test the script without modifying files**
- Use preview mode: `bash scripts/optimize-images.sh --preview`

**Images look blurry after optimization**
- Restore originals from backup: `cp -r assets/images/backup-TIMESTAMP/* assets/images/`
- Re-run with higher quality: `bash scripts/optimize-images.sh --quality 90`

**Script skipped my images**
- The script automatically skips images already under the size threshold
- To re-optimize, restore from backup and re-run

**I need to restore original images**
- Your originals are safely backed up: `cp -r assets/images/backup-TIMESTAMP/* assets/images/`

**Script fails on Windows**
- Use Git Bash or Windows Subsystem for Linux (WSL)

## Best Practices

1. **Always preview before optimizing** — run `--preview` first, then optimize
2. **Crop before uploading** — don't upload 4000px images if they display at 800px
3. **Use the right format:**
   - JPG: Photos, complex images (smaller file size)
   - PNG: Graphics, logos, images requiring transparency
   - SVG: Icons, simple graphics (scalable, tiny file size)
4. **Run quarterly** — newly-added images will be processed; already-optimized ones are skipped
