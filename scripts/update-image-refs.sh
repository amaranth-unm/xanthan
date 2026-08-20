#!/bin/bash

# Update markdown references after PNG→JPG conversion
# Reads png_to_jpg_conversions.txt and updates all .md files

if [ ! -f png_to_jpg_conversions.txt ]; then
    echo "No conversions file found. Run optimize-images.sh first."
    exit 1
fi

echo "Updating markdown image references..."

while IFS=' -> ' read -r old_path new_path; do
    # Extract just the filename from full path
    old_file=$(basename "$old_path")
    new_file=$(basename "$new_path")

    # Remove extension for pattern matching
    old_base="${old_file%.png}"

    echo "  $old_file → $new_file"

    # Find and replace in all .md files
    # Use pipes (|) as delimiters in sed to avoid issues with slashes in paths
    # sed -i takes an argument on BSD/macOS and none on GNU/Linux. Detect once
    # rather than assuming a laptop: this also runs on a GitHub runner.
    if sed --version >/dev/null 2>&1; then
        find . -name "*.md" -type f -not -path "./_site/*" -exec sed -i "s|${old_base}\.png|${old_base}.jpg|g" {} +
    else
        find . -name "*.md" -type f -not -path "./_site/*" -exec sed -i '' "s|${old_base}\.png|${old_base}.jpg|g" {} +
    fi
done < png_to_jpg_conversions.txt

echo ""
echo "✓ Markdown references updated!"
echo "Review changes with: git diff"
