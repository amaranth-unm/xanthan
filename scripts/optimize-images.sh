#!/bin/bash

# Image Optimization Script for Xanthan Sites
# Optimizes images in-place within image folders
# Skips images that are already optimized to avoid re-processing

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Default optimization parameters
MAX_WIDTH=1600
MAX_HEIGHT=0  # 0 means unlimited height
MAX_EDGE=0    # 0 means disabled (use width/height instead)
QUALITY=85
TARGET_FOLDER=""  # Empty means process all subfolders

# Base directories to search (can specify multiple with --base-dir)
BASE_DIRS=()
RECURSIVE=false
MAKE_BACKUP=true   # a copy beside the originals; pointless where git already has them

# Parse command line arguments
PREVIEW_MODE=false
while [[ $# -gt 0 ]]; do
    case $1 in
        --preview)
            PREVIEW_MODE=true
            shift
            ;;
        --folder)
            TARGET_FOLDER="$2"
            shift 2
            ;;
        --base-dir)
            BASE_DIRS+=("$2")
            shift 2
            ;;
        --recursive)
            RECURSIVE=true
            shift
            ;;
        --no-backup)
            MAKE_BACKUP=false
            shift
            ;;
        --max-edge)
            MAX_EDGE="$2"
            MAX_WIDTH=0
            MAX_HEIGHT=0
            shift 2
            ;;
        --width)
            MAX_WIDTH="$2"
            MAX_EDGE=0
            shift 2
            ;;
        --height)
            MAX_HEIGHT="$2"
            MAX_EDGE=0
            shift 2
            ;;
        --quality)
            QUALITY="$2"
            shift 2
            ;;
        --help)
            echo "Image Optimization Script"
            echo "Usage: bash optimize-images.sh [options]"
            echo ""
            echo "Options:"
            echo "  --preview              Show what would be optimized (no changes)"
            echo "  --base-dir PATH        Base image directory to process (default: assets/images)"
            echo "                         Can be specified multiple times for multiple directories"
            echo "  --no-backup            Skip the backup copy. Safe inside a git repository,"
            echo "                         where the originals are already in history"
            echo "  --recursive            Find all image-containing directories within each base dir"
            echo "                         Use with --base-dir to scan a whole folder tree"
            echo "  --folder NAME          Process only a specific subfolder within each base dir"
            echo "  --max-edge N           Limit longest edge to N pixels"
            echo "  --width N              Max width in pixels (default: 1600)"
            echo "  --height N             Max height in pixels (default: unlimited)"
            echo "  --quality N            JPEG quality 1-100 (default: 85)"
            echo ""
            echo "Examples:"
            echo "  bash optimize-images.sh --preview"
            echo "  bash optimize-images.sh"
            echo "  bash optimize-images.sh --base-dir assets/images --max-edge 1600"
            echo "  bash optimize-images.sh --base-dir alice/images --base-dir bob/images"
            echo "  bash optimize-images.sh --base-dir essays/ --recursive"
            echo "  bash optimize-images.sh --folder backgrounds --max-edge 2000"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

# Resolve script directory so relative paths work from any CWD
SCRIPT_DIR="$(cd -- "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Default to assets/images if no base dirs specified
if [ ${#BASE_DIRS[@]} -eq 0 ]; then
    BASE_DIRS=("$PROJECT_ROOT/assets/images")
fi

# Resolve all base dirs to absolute paths
RESOLVED_DIRS=()
for dir in "${BASE_DIRS[@]}"; do
    # If relative, resolve from project root
    if [[ "$dir" != /* ]]; then
        dir="$PROJECT_ROOT/$dir"
    fi
    RESOLVED_DIRS+=("$dir")
done

echo -e "${GREEN}=== Xanthan Image Optimizer ===${NC}"
echo -e "${BLUE}Settings:${NC}"
if [ "$MAX_EDGE" -gt 0 ]; then
    echo "  Max Edge:   ${MAX_EDGE}px (longest dimension)"
else
    echo "  Max Width:  ${MAX_WIDTH}px"
    if [ "$MAX_HEIGHT" -gt 0 ]; then
        echo "  Max Height: ${MAX_HEIGHT}px"
    else
        echo "  Max Height: unlimited"
    fi
fi
echo "  Quality:    ${QUALITY}"
echo "  Base dirs:"
for dir in "${RESOLVED_DIRS[@]}"; do
    echo "    $dir"
done
if [ -n "$TARGET_FOLDER" ]; then
    echo "  Subfolder:  $TARGET_FOLDER/"
fi
if [ "$PREVIEW_MODE" = true ]; then
    echo -e "${PURPLE}[PREVIEW MODE - No files will be modified]${NC}"
fi
echo ""

# Check if ImageMagick is installed and determine command
if command -v magick &> /dev/null; then
    MAGICK_CMD="magick"
elif command -v convert &> /dev/null; then
    MAGICK_CMD="convert"
else
    echo -e "${RED}Error: ImageMagick is not installed.${NC}"
    echo "Install it with: brew install imagemagick"
    exit 1
fi

# Function to check if PNG has transparency
has_transparency() {
    local file=$1
    local has_alpha=$(identify -format "%A" "$file" 2>/dev/null)
    if [[ "$has_alpha" != "Blend" && "$has_alpha" != "True" ]]; then
        return 1
    fi
    local alpha_min=$(identify -format "%[fx:minima.a]" "$file" 2>/dev/null)
    [[ -n "$alpha_min" ]] && (( $(echo "$alpha_min < 1.0" | bc -l) ))
}

# Function to check if image is already optimized
is_optimized() {
    local file=$1
    local max_size=$2
    local file_size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
    [ "$file_size" -lt "$max_size" ]
}

# Function to optimize all images in a given directory (not recursive)
optimize_dir() {
    local dir_path=$1   # absolute path to the directory to process
    local label=$2      # display label

    if [ ! -d "$dir_path" ]; then
        echo -e "${BLUE}ℹ No directory found: $dir_path${NC}"
        return
    fi

    echo -e "${BLUE}Processing: $label${NC}"

    local count=0
    local skipped=0
    local converted=0

    while IFS= read -r img; do
        filename=$(basename "$img")

        # Convert PNG to JPG if no transparency
        if [[ $filename == *.png ]]; then
            if ! has_transparency "$img"; then
                local base="${img%.png}"
                local jpg_file="${base}.jpg"

                if [ "$PREVIEW_MODE" = true ]; then
                    echo -e "  ${PURPLE}⚙ WOULD convert & optimize: $filename → JPG${NC}"
                    size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
                    size_before=$(du -h "$img" | cut -f1)
                    size_after_est=$(echo "$size_before_bytes * 0.4 / 1" | bc)
                    size_after_kb=$(echo "$size_after_est / 1024" | bc)
                    savings=$(echo "$size_before_bytes - $size_after_est" | bc)
                    savings_kb=$(echo "$savings / 1024" | bc)
                    echo -e "    Original PNG: ${YELLOW}${size_before}${NC}"
                    echo -e "    Estimated JPG: ${GREEN}~${size_after_kb}KB${NC}"
                    echo -e "    Savings: ${BLUE}-${savings_kb}KB${NC}"
                else
                    echo -e "  ${YELLOW}🔄 Converting & optimizing: $filename → JPG${NC}"
                    size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
                    size_before=$(du -h "$img" | cut -f1)

                    if [ "$MAX_EDGE" -gt 0 ]; then
                        $MAGICK_CMD "$img" -resize "${MAX_EDGE}x${MAX_EDGE}>" -quality "$QUALITY" -strip "$jpg_file"
                    elif [ "$MAX_HEIGHT" -gt 0 ]; then
                        $MAGICK_CMD "$img" -resize "${MAX_WIDTH}x${MAX_HEIGHT}>" -quality "$QUALITY" -strip "$jpg_file"
                    else
                        $MAGICK_CMD "$img" -resize "${MAX_WIDTH}x>" -quality "$QUALITY" -strip "$jpg_file"
                    fi

                    rm "$img"
                    # Log conversion for update-image-refs.sh
                    relative_img="${img#$PROJECT_ROOT/}"
                    relative_jpg="${jpg_file#$PROJECT_ROOT/}"
                    echo "$relative_img -> $relative_jpg" >> "$PROJECT_ROOT/png_to_jpg_conversions.txt"

                    size_after_bytes=$(stat -f%z "$jpg_file" 2>/dev/null || stat -c%s "$jpg_file" 2>/dev/null)
                    size_after=$(du -h "$jpg_file" | cut -f1)
                    savings=$(echo "$size_before_bytes - $size_after_bytes" | bc)
                    savings_kb=$(echo "$savings / 1024" | bc)
                    savings_pct=$(echo "scale=1; $savings * 100 / $size_before_bytes" | bc)
                    echo -e "    Original PNG: ${YELLOW}${size_before}${NC}"
                    echo -e "    New JPG: ${GREEN}${size_after}${NC}"
                    echo -e "    Savings: ${BLUE}-${savings_kb}KB (${savings_pct}%)${NC}"
                fi
                ((converted++))
                ((count++))
                continue
            fi
        fi

        # Skip small files (likely already optimized)
        if is_optimized "$img" "300000"; then
            echo -e "  ${GREEN}✓ Already optimized: $filename${NC}"
            ((skipped++))
            continue
        fi

        if [ "$PREVIEW_MODE" = true ]; then
            echo -e "  ${PURPLE}⚙ WOULD optimize: $filename${NC}"
            size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            size_before=$(du -h "$img" | cut -f1)
            size_after_est=$(echo "$size_before_bytes * 0.6 / 1" | bc)
            size_after_kb=$(echo "$size_after_est / 1024" | bc)
            savings=$(echo "$size_before_bytes - $size_after_est" | bc)
            savings_kb=$(echo "$savings / 1024" | bc)
            echo -e "    Original:   ${YELLOW}${size_before}${NC}"
            echo -e "    Estimated:  ${GREEN}~${size_after_kb}KB${NC}"
            echo -e "    Savings:    ${BLUE}-${savings_kb}KB${NC}"
        else
            echo -e "  ${YELLOW}⚙ Optimizing: $filename${NC}"
            size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            size_before=$(du -h "$img" | cut -f1)

            if [[ $filename == *.svg ]]; then
                echo -e "    (SVG - skipping)"
            else
                if [ "$MAX_EDGE" -gt 0 ]; then
                    $MAGICK_CMD "$img" -resize "${MAX_EDGE}x${MAX_EDGE}>" -quality "$QUALITY" -strip "$img.tmp"
                elif [ "$MAX_HEIGHT" -gt 0 ]; then
                    $MAGICK_CMD "$img" -resize "${MAX_WIDTH}x${MAX_HEIGHT}>" -quality "$QUALITY" -strip "$img.tmp"
                else
                    $MAGICK_CMD "$img" -resize "${MAX_WIDTH}x>" -quality "$QUALITY" -strip "$img.tmp"
                fi
                mv "$img.tmp" "$img"
            fi

            size_after_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            size_after=$(du -h "$img" | cut -f1)
            savings=$(echo "$size_before_bytes - $size_after_bytes" | bc)
            savings_kb=$(echo "$savings / 1024" | bc)
            savings_pct=$(echo "scale=1; $savings * 100 / $size_before_bytes" | bc)
            echo -e "    Original:  ${YELLOW}${size_before}${NC}"
            echo -e "    New size:  ${GREEN}${size_after}${NC}"
            echo -e "    Savings:   ${BLUE}-${savings_kb}KB (${savings_pct}%)${NC}"
        fi
        ((count++))
    done < <(find "$dir_path" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \))

    echo -e "${GREEN}✓ Processed $count new images, skipped $skipped already-optimized"
    if [ $converted -gt 0 ]; then
        echo -e "  Converted $converted PNG→JPG (no transparency)${NC}"
    else
        echo -e "${NC}"
    fi
    echo ""
}

# Main processing
echo -e "${YELLOW}Starting optimization...${NC}"
echo ""

# Clear conversion log
if [ "$PREVIEW_MODE" = false ]; then
    rm -f "$PROJECT_ROOT/png_to_jpg_conversions.txt"
fi

BACKUP_STAMP=$(date +%Y%m%d-%H%M%S)

for BASE_DIR in "${RESOLVED_DIRS[@]}"; do

    if [ ! -d "$BASE_DIR" ]; then
        echo -e "${RED}Warning: Directory not found, skipping: $BASE_DIR${NC}"
        echo ""
        continue
    fi

    # Create backup for this base dir
    if [ "$PREVIEW_MODE" = false ] && [ "$MAKE_BACKUP" = true ]; then
        BACKUP_DIR="${BASE_DIR}-backup-${BACKUP_STAMP}"
        echo -e "${YELLOW}Backing up $BASE_DIR → $BACKUP_DIR${NC}"
        mkdir -p "$BACKUP_DIR"
        cp -r "$BASE_DIR"/* "$BACKUP_DIR/" 2>/dev/null || true
        echo -e "${GREEN}✓ Backup created${NC}"
        echo ""
    fi

    if [ -n "$TARGET_FOLDER" ]; then
        optimize_dir "$BASE_DIR/$TARGET_FOLDER" "${BASE_DIR##$PROJECT_ROOT/}/$TARGET_FOLDER"
    elif [ "$RECURSIVE" = true ]; then
        # Find all directories that contain at least one image file, at any depth
        while IFS= read -r img_dir; do
            [[ "$img_dir" == *-backup-* ]] && continue
            optimize_dir "$img_dir" "${img_dir##$PROJECT_ROOT/}"
        done < <(find "$BASE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) \
                 | xargs -I{} dirname {} | sort -u)
    else
        for dir in "$BASE_DIR"/*/; do
            [ -d "$dir" ] || continue
            folder=$(basename "$dir")
            # Skip backup directories
            [[ "$folder" == *-backup-* ]] && continue
            optimize_dir "$dir" "${BASE_DIR##$PROJECT_ROOT/}/$folder"
        done

        # This mode looks one level down, at subfolders. Images sitting loose in
        # the base directory are not touched, which reads as the script doing
        # nothing at all. Say so rather than exiting quietly.
        loose=$(find "$BASE_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | wc -l | tr -d ' ')
        if [ "$loose" -gt 0 ]; then
            echo -e "${YELLOW}Note: $loose image(s) sit directly in ${BASE_DIR##$PROJECT_ROOT/} and were skipped.${NC}"
            echo -e "${YELLOW}      This mode only walks subfolders. Use --recursive to include them.${NC}"
            echo ""
        fi
    fi

done

echo -e "${GREEN}=== Optimization Complete! ===${NC}"
echo ""

if [ "$PREVIEW_MODE" = true ]; then
    echo -e "${PURPLE}[PREVIEW MODE COMPLETE]${NC}"
    echo ""
    echo -e "${YELLOW}To actually optimize and create backups, run:${NC}"
    echo "  bash scripts/optimize-images.sh"
    echo ""
else
    if [ -f "$PROJECT_ROOT/png_to_jpg_conversions.txt" ]; then
        echo -e "${YELLOW}⚠ PNG→JPG conversions detected!${NC}"
        echo "Update markdown references with:"
        echo "  bash scripts/update-image-refs.sh"
        echo ""
    fi
    echo -e "${YELLOW}Next steps:${NC}"
    echo "  • Verify the optimized images look good in your browser"
    echo "  • Run again anytime — already-optimized images are skipped"
    echo "  • Delete backups once confirmed: rm -rf <base-dir>-backup-*"
fi
