#!/usr/bin/env bash
# assets/generate_assets.sh
# Procedurally generate placeholder grain/shape/canvas PNG assets for InkBloom MaxPack
# Requires ImageMagick (magick or convert). Saves files into assets/inkbloom/.

set -e

OUT_DIR="assets/inkbloom"
mkdir -p "$OUT_DIR"

# Locate ImageMagick command
if command -v magick >/dev/null 2>&1; then
  IM="magick"
elif command -v convert >/dev/null 2>&1; then
  IM="convert"
else
  echo "Error: ImageMagick not found. Install it (https://imagemagick.org) and re-run this script." >&2
  exit 1
fi

echo "Using ImageMagick: $IM"

echo "Generating grain textures (2000x2000)..."
# Fine paper tooth
$IM -size 2000x2000 plasma:fractal -colorspace Gray -normalize -level 5%,95% -blur 0x0.8 -evaluate Multiply 0.65 \( -clone 0 -fill white -colorize 5% \) -compose Multiply -composite "$OUT_DIR/grain_paper_fine.png"

# Coarse cold-press texture
$IM -size 2000x2000 plasma:fractal -colorspace Gray -normalize -level 2%,98% -blur 0x1.6 -evaluate Multiply 0.9 "$OUT_DIR/grain_paper_coarse.png"

# Bloom edge (cloudy organic texture)
$IM -size 2000x2000 plasma:fractal -colorspace Gray -normalize -blur 0x3 \( -size 2000x2000 radial-gradient:none-white -gravity center -scale 200% \) -compose Multiply -composite "$OUT_DIR/grain_bloom_edge.png"

# Linen weave (subtle directional weave)
$IM -size 2000x2000 xc:none -fill "rgba(220,210,200,1)" -draw "rectangle 0,0 2000,2000" \
  \( -size 2000x200 pattern:gray25 -scale 2000x2000 -rotate 90 -blur 0x1 -level 10%,90% \) -compose Multiply -composite "$OUT_DIR/grain_linen.png"

# Speckle for stipple
$IM -size 2000x2000 xc:white -seed 42 +noise Random -threshold 94% -blur 0x0.6 -normalize -evaluate Multiply 0.6 "$OUT_DIR/grain_speckle.png"

echo "Generating shape sources (1024x1024, transparent background)..."

# Soft round (feathered circle)
$IM -size 1024x1024 xc:none -fill white -draw "circle 512,512 512,200" -blur 0x40 -alpha set -channel A -evaluate Multiply 0.95 "$OUT_DIR/shape_soft_round.png"

# Hard round (crisp circle)
$IM -size 1024x1024 xc:none -fill white -draw "circle 512,512 512,300" -alpha set "$OUT_DIR/shape_hard_round.png"

# Tapered tip (teardrop)
$IM -size 1024x1024 xc:none -fill white -draw "path 'M512,100 C600,300 700,420 512,924 C324,420 424,300 512,100 Z'" -blur 0x6 -alpha set "$OUT_DIR/shape_tapered_tip.png"

# Organic blob (noisy blob)
$IM -size 1024x1024 plasma:fractal -normalize -blur 0x2 -threshold 35% -negate -fill white -colorize 100% -alpha set "$OUT_DIR/shape_organic_blob.png"

# Fine line (thin rounded rectangle)
$IM -size 1024x1024 xc:none -fill white -draw "roundrectangle 80,480 944,544 40,40" -blur 0x1 -alpha set "$OUT_DIR/shape_fine_line.png"

echo "Generating full-canvas textures (3000x4000)..."

# Linen field journal (warm-toned weave)
$IM -size 3000x4000 xc="#f5efe6" \( -size 3000x4000 plasma:fractal -colorspace Gray -normalize -blur 0x2 -evaluate Multiply 0.35 \) -compose Multiply -composite "$OUT_DIR/linen_field_journal.png"

# Aged herbarium page (sepia with light spots)
$IM -size 3000x4000 xc="#efe1cc" \( -size 3000x4000 plasma:fractal -colorspace Gray -normalize -blur 0x4 -evaluate Multiply 0.25 \) -compose Multiply -composite \
  \( -size 3000x4000 xc:none -fill black -draw 'translate 1500,2000 circle 0,0 400,200' -blur 0x80 -evaluate Multiply 0.05 \) -compose Over -composite "$OUT_DIR/aged_herbarium_page.png"

echo "All placeholder assets generated in $OUT_DIR"

echo "Files created:"
ls -1 "$OUT_DIR"

exit 0
