# InkBloom MaxPack — Brush Build Brief

Technical specs for building all 60 brushes in Procreate's Brush Studio.

This document is written to hand directly to yourself or a hired brush artist. It assumes familiarity with Procreate's Brush Studio panels: Stroke Path, Taper, Shape, Grain, Rendering, Wet Mix, Color Dynamics, Dynamics, Material, About This Brush.

Every brush starts from Settings > Duplicate on Procreate's default "Watercolor" or "Inking - Studio Pen" brush (noted per family below) rather than from scratch — this saves significant setup time on stroke path and pressure curve basics.

---

## 0. Before you start: shared assets to create first

Grain textures needed (create once, reuse across brushes):

- `grain_paper_fine.png` — 2000×2000px, subtle fine paper tooth, low contrast  
- `grain_paper_coarse.png` — 2000×2000px, heavier cold-press texture  
- `grain_bloom_edge.png` — 2000×2000px, organic mottled cloud texture (for wet-edge blooms)  
- `grain_linen.png` — 2000×2000px, woven linen texture  
- `grain_speckle.png` — 2000×2000px, fine random speckle for stipple/splatter

Shape sources needed:

- `shape_soft_round.png` — standard soft round, feathered edge  
- `shape_hard_round.png` — crisp hard round  
- `shape_tapered_tip.png` — elongated teardrop for nib-style strokes  
- `shape_organic_blob.png` — irregular hand-painted blob for petal/splatter work  
- `shape_fine_line.png` — thin rectangular shape for hatching/veining

Build these in Procreate itself (paint them on canvas, then import via Shape/Grain source) or in Photoshop/Affinity and import as PNG with transparency.

---

## 1. Fine Nib Inkers (3 brushes)

Base brush: Duplicate "Inking - Studio Pen"  
Shared settings: Shape = `shape_tapered_tip`, Grain = none (0% grain, keeps ink crisp), Wet Mix = off entirely (dry medium)

- Nib — Fine  
  - Stroke Path: Spacing 4% / Streamline 60%  
  - Taper: Size taper 15%, both ends  
  - Rendering: Glaze off, Wet Edges off  
  - Notes: Max size cap low (~8pt) for consistent thin line

- Nib — Broad  
  - Stroke Path: Spacing 6% / Streamline 40%  
  - Taper: Size taper 10%, end only  
  - Rendering: Glaze off  
  - Notes: Higher max size (~24pt), less pressure sensitivity

- Nib — Flex  
  - Stroke Path: Spacing 3% / Streamline 70%  
  - Taper: Size taper 40%, both ends, Pressure curve set to steep S-curve  
  - Rendering: Glaze off  
  - Notes: Most pressure-reactive of the three — for expressive calligraphic lines

---

## 2. Root & Vine Brushes (6 brushes)

Base brush: Duplicate "Inking - Studio Pen," then heavily modify Stroke Path  
Shared settings: Shape = `shape_tapered_tip`, Grain = `grain_paper_fine` at 15% for slight organic edge irregularity

- Root — Taper  
  - Stroke Path: Spacing 5%, Jitter 8%  
  - Taper: Size taper 60% (start), 30% (end)  
  - Rendering: Wet Edges 10%  
  - Notes: Simulates a root thickening toward the base

- Root — Branch  
  - Stroke Path: Spacing 8%, Jitter 15%, Fall Off enabled  
  - Taper: Size taper 50% both ends  
  - Rendering: Wet Edges 10%  
  - Notes: Fall Off lets stroke naturally thin as it decelerates — good for branch-splitting motion

- Vine — Climbing  
  - Stroke Path: Spacing 4%, Streamline 30% (low, for organic wobble)  
  - Taper: Size taper 20%  
  - Rendering: Wet Edges 5%  
  - Notes: Low streamline intentional — keeps line "alive," not too smooth

- Vine — Trailing  
  - Stroke Path: Spacing 6%, Jitter 20%  
  - Taper: Size taper 70% (end only, long fade)  
  - Rendering: Wet Edges 5%  
  - Notes: Long tapering fade for delicate trailing tendrils

- Stem — Woody  
  - Stroke Path: Spacing 3%  
  - Taper: Size taper 10% only  
  - Rendering: Wet Edges 0%, add Grain at 25% for bark-like texture  
  - Notes: Sturdier, more rigid line than Vine brushes

- Stem — Soft  
  - Stroke Path: Spacing 5%  
  - Taper: Size taper 35% both ends  
  - Rendering: Wet Edges 15%  
  - Notes: Softer pressure response, pairs with Bloom Wash brushes

---

## 3. Bloom Wash Brushes (10 brushes)

Base brush: Duplicate Procreate's "Watercolor - Wet Wash"  
Shared settings: Shape = `shape_soft_round`. Wet Mix is the critical panel — values shown per brush.

- Bloom Wash — Petal Soft  
  - Grain: `grain_bloom_edge` 40%  
  - Wet Mix: Dilution 50 / Spread 30 / Run 20 / Dry Edges on  
  - Rendering: Glaze 20%  
  - Notes: Core "petal" brush — soft bleed

- Bloom Wash — Petal Deep  
  - Grain: `grain_bloom_edge` 60%  
  - Wet Mix: Dilution 70 / Spread 40 / Run 30  
  - Rendering: Glaze 35%  
  - Notes: More saturated buildup, for petal centers

- Bloom Wash — Sky Diffuse  
  - Grain: `grain_bloom_edge` 25%, scaled up 200%  
  - Wet Mix: Dilution 30 / Spread 60 / Run 10  
  - Rendering: Glaze 10%  
  - Notes: Large, low-contrast blooms for backgrounds

- Bloom Wash — Background Fade  
  - Grain: `grain_paper_fine` 20%  
  - Wet Mix: Dilution 20 / Spread 20 / Run 5  
  - Rendering: Glaze 5%  
  - Notes: Very light touch, near-transparent

- Bloom Wash — Wet Edge  
  - Grain: `grain_bloom_edge` 70%  
  - Wet Mix: Dilution 60 / Spread 50 / Run 40, Dry Edges strong  
  - Rendering: Glaze 15%  
  - Notes: Signature "watercolor blossom" edge effect

- Bloom Wash — Layered Pool  
  - Grain: `grain_bloom_edge` 45%  
  - Wet Mix: Dilution 55 / Spread 35 / Run 25  
  - Rendering: Glaze 40% (builds with layering)  
  - Notes: Designed for stacking multiple passes

- Bloom Wash — Gentle Graze  
  - Grain: `grain_paper_fine` 15%  
  - Wet Mix: Dilution 15 / Spread 15 / Run 5  
  - Rendering: Glaze 0%  
  - Notes: Minimal, controlled — for careful shading

- Bloom Wash — Full Saturation  
  - Grain: `grain_bloom_edge` 30%  
  - Wet Mix: Dilution 90 / Spread 30 / Run 15  
  - Rendering: Glaze 50%  
  - Notes: Maximum pigment load brush

- Bloom Wash — Dry Fade  
  - Grain: `grain_paper_coarse` 50%  
  - Wet Mix: Dilution 25 / Spread 10 / Run 0 (no run)  
  - Rendering: Glaze 5%  
  - Notes: Simulates a nearly-dry brush dragging color

- Bloom Wash — Corner Bleed  
  - Grain: `grain_bloom_edge` 55%, asymmetric offset  
  - Wet Mix: Dilution 65 / Spread 45 / Run 35  
  - Rendering: Glaze 20%  
  - Notes: Bleed weighted to one edge for organic corner pooling

---

## 4. Pressed Petal Brushes (8 brushes)

Base brush: Duplicate "Watercolor - Dry Wash" (flatter, less bleed than Wet Wash)  
Shared settings: Shape = `shape_organic_blob`, low Wet Mix run (flat color goal)

- Pressed Petal — Flat Layer  
  - Grain: `grain_paper_fine` 20%  
  - Wet Mix: Dilution 40 / Spread 15 / Run 0  
  - Rendering: Glaze 10%  
  - Notes: Even, flat fill — base petal layer

- Pressed Petal — Overlap  
  - Grain: `grain_paper_fine` 25%  
  - Wet Mix: Dilution 45 / Spread 20 / Run 5  
  - Rendering: Glaze 15%  
  - Notes: Slightly higher spread for overlapping petal edges

- Pressed Petal — Vein Detail  
  - Grain: `grain_linen` 10%, scaled small  
  - Wet Mix: Dilution 20 / Spread 5 / Run 0  
  - Rendering: Glaze 5%  
  - Notes: Fine detail brush, use at small size for veins

- Pressed Petal — Edge Crisp  
  - Grain: none  
  - Wet Mix: Dilution 10 / Spread 0 / Run 0  
  - Rendering: Glaze 0%  
  - Notes: Hardest edge in this family, for defined outlines

- Pressed Petal — Translucent  
  - Grain: `grain_paper_fine` 15%  
  - Wet Mix: Opacity capped at 40% in brush settings  
  - Rendering: Glaze 25%  
  - Notes: Layerable transparency for glass-press look

- Pressed Petal — Dried Curl  
  - Grain: `grain_paper_coarse` 40%  
  - Wet Mix: Dilution 30 / Spread 10 / Run 0  
  - Rendering: Glaze 5%  
  - Notes: Textured, slightly broken edge

- Pressed Petal — Shadow Layer  
  - Grain: none  
  - Color Dynamics: Hue/Saturation/Brightness jitter set to 0 (keeps shadow tone consistent)  
  - Wet Mix: Dilution 35 / Spread 15  
  - Rendering: Glaze 20%  
  - Notes: Designed for use at reduced opacity as a shadow pass

- Pressed Petal — Glass Press  
  - Grain: `grain_paper_fine` 10%  
  - Wet Mix: Dilution 50 / Spread 25 / Run 10  
  - Rendering: Glaze 45%, Highlight 10%  
  - Notes: Glossy, pressed-under-glass sheen

---

## 5. Stipple & Texture Brushes (6 brushes)

Base brush: Duplicate "Texture - Grain"  
Shared settings: Shape = `grain_speckle` used as both shape and grain source (double-texture technique)

- Stipple — Fine Grain  
  - Stroke Path: Spacing 2%, Scatter 60%  
  - Grain: `grain_speckle` scaled small, 80%  
  - Notes: Dense, fine dot pattern

- Stipple — Coarse Grain  
  - Stroke Path: Spacing 5%, Scatter 80%  
  - Grain: `grain_speckle` scaled large, 90%  
  - Notes: Loose, larger dot pattern

- Stipple — Shading Dot  
  - Stroke Path: Spacing 3%, Scatter 40%, Pressure controls opacity  
  - Grain: `grain_speckle` 70%  
  - Notes: Dot density increases with pressure — for shading buildup

- Texture — Aged Paper  
  - Stroke Path: N/A (full-canvas overlay brush)  
  - Grain: `grain_paper_coarse` 100%, applied as Glaze overlay  
  - Notes: Use at large size, low opacity as a full-page texture pass

- Texture — Cross-Hatch  
  - Stroke Path: Spacing 8%, Angle Jitter high  
  - Shape: `shape_fine_line` as shape source  
  - Notes: Rotates per-stroke for organic hatching

- Texture — Grain Wash  
  - Stroke Path: Spacing 4%  
  - Grain: `grain_paper_fine` 100%, Wet Mix Dilution 20  
  - Notes: Combines dry grain with slight wash bleed

---

## 6. Growth Splatter Brushes (5 brushes)

Base brush: Duplicate "Splatter - Big Drips"  
Shared settings: Shape = `shape_organic_blob`, Stroke Path Scatter is the primary control

- Splatter — Seed Scatter  
  - Scatter 90%, Size Jitter 50%  
  - Grain: `grain_speckle` 60%  
  - Notes: Medium-sized irregular scatter

- Splatter — Pollen Dust  
  - Scatter 100%, Size Jitter 80%, very small max size  
  - Grain: `grain_speckle` 40%  
  - Notes: Fine, airy dust effect

- Splatter — Wild Fling  
  - Scatter 120% (overdrive), high Size Jitter  
  - Grain: none  
  - Notes: Best used with Apple Pencil flick gesture for realistic fling pattern

- Splatter — Fine Mist  
  - Scatter 100%, tiny size range  
  - Grain: `grain_bloom_edge` 20%  
  - Notes: Very fine, near-atmospheric

- Splatter — Heavy Drop  
  - Scatter 40%, low jitter, large base size  
  - Grain: `grain_bloom_edge` 50%, Wet Mix Run 20  
  - Notes: Large single drops with slight bleed

---

## 7. Smudge & Blend Brushes (4 brushes)

Base brush: Duplicate Procreate's "Smudge - Soft Blend" (set brush behavior to Smudge under Properties)

- Smudge — Soft Edge  
  - Stroke Path: Spacing 5%  
  - Pull strength: 40%  
  - Notes: Gentle edge softening

- Smudge — Directional Pull  
  - Stroke Path: Spacing 3%, Streamline 60%  
  - Pull strength: 70%  
  - Notes: Strong directional drag for petal/vine motion blur

- Blend — Wet Merge  
  - Stroke Path: Spacing 4%  
  - Pull: 55%, Grain `grain_bloom_edge` 30%  
  - Notes: Merges adjacent wet colors organically

- Blend — Dry Feather  
  - Stroke Path: Spacing 6%  
  - Pull: 25%, low grain  
  - Notes: Subtle, controlled feathering

---

## 8. Botanical Erasers (6 brushes)

Base brush: Duplicate any finished brush above, then set Properties > Behavior to Eraser. Erasers inherit shape/grain/wet-mix from the source brush.

- Eraser — Torn Edge  
  - Built from: Pressed Petal — Dried Curl  
  - Notes: Irregular, torn-paper erase edge

- Eraser — Faded Bloom  
  - Built from: Bloom Wash — Petal Soft  
  - Notes: Soft, diffuse partial erase — good for lifting color

- Eraser — Pressed Flower Fade  
  - Built from: Pressed Petal — Translucent  
  - Notes: Partial-opacity erase for fade-outs

- Eraser — Clean Lift  
  - Built from: Nib — Broad (hard edge)  
  - Notes: Crisp, full erase — precision correction tool

- Eraser — Grain Match  
  - Built from: Texture — Aged Paper  
  - Notes: Erases while leaving matching paper grain visible underneath

- Eraser — Soft Vignette  
  - Built from: Bloom Wash — Sky Diffuse  
  - Notes: Large soft falloff — for vignette/edge darkening effects

---

## 9. Detail Overlay Textures (6 brushes)

Base brush: Duplicate "Texture - Grain," used primarily at large size as full-layer overlays. Include suggested blend mode in "About This Brush".

- Overlay — Vein Map (leaf)  
  - Grain source: Hand-painted leaf vein PNG, high contrast  
  - Suggested blend mode: Multiply

- Overlay — Vein Map (petal)  
  - Grain source: Hand-painted petal vein PNG, softer contrast  
  - Suggested blend mode: Multiply, reduced opacity

- Overlay — Cross-Hatch Fine  
  - Grain source: `shape_fine_line` repeated pattern, fine  
  - Suggested blend mode: Multiply

- Overlay — Cross-Hatch Bold  
  - Grain source: `shape_fine_line` repeated pattern, bold  
  - Suggested blend mode: Multiply

- Overlay — Paper Grain  
  - Grain source: `grain_paper_fine`  
  - Suggested blend mode: Overlay or Soft Light

- Overlay — Linen Weave  
  - Grain source: `grain_linen`  
  - Suggested blend mode: Multiply, low opacity

---

## 10. Precision Line Brushes (4 brushes)

Base brush: Duplicate "Inking - Studio Pen"

- Line — Thin/Thick Contrast  
  - Stroke Path: Spacing 3%, Pressure heavily affects size (steep curve)  
  - Taper: Size taper 20%  
  - Notes: Classic calligraphic contrast line

- Line — Botanical Contour  
  - Stroke Path: Spacing 4%, Streamline 50%  
  - Taper: Size taper 30% both ends  
  - Notes: Smooth contour line for outlining botanical forms

- Line — Technical Plate  
  - Stroke Path: Spacing 2%, Streamline 80% (very smooth)  
  - Taper: Minimal taper (10%)  
  - Notes: Mimics engraved botanical-plate linework — consistent width

- Line — Sketchbook Scratch  
  - Stroke Path: Spacing 6%, Jitter 25%  
  - Taper: Size taper 40%, irregular  
  - Notes: Loose, energetic sketch line

---

## 11. Colored Pencils (2 brushes)

Base brush: Duplicate Procreate's "Sketching - 6B Pencil"

- Pencil — Botanical Sketch  
  - Grain: `grain_paper_coarse` 50%  
  - Notes: Standard waxy pencil build, good line control

- Pencil — Shading Layer  
  - Grain: `grain_paper_coarse` 70%, Opacity capped at 60%  
  - Notes: Built for cross-hatch shading passes, layers cleanly

---

## 12. Paper Textures (2 — canvas/background assets, not brushes)

- Linen Field Journal — export `grain_linen.png` at full canvas resolution (e.g., 3000×4000px for standard Procreate canvas), slightly warm-toned, subtle weave

- Aged Herbarium Page — export `grain_paper_coarse.png` at full canvas resolution, warm sepia tone, light foxing/age spots painted in manually for realism

These get imported by the end user as a new canvas background layer, not through the brush library.

---

## Export checklist

- Organize all 60 brushes into Procreate brush Sets matching the 11 families above (Procreate lets you group brushes into custom folders within a set)  
- Rename every brush using the naming convention from the brush list doc (Family — Descriptor)  
- Fill in About This Brush for each with a one-line usage tip (this appears when the user long-presses the brush)  
- Test full set on at least 2 device sizes (iPad Mini, iPad Pro) to confirm brush scaling feels consistent  
- Select the full brush Set > Share > Export brush set as `.brushset`  
- Rename final export file: `InkBloom-MaxPack.brushset`  
- Zip the `.brushset` together with the two paper texture PNGs into `InkBloom-MaxPack-Full.zip` — this is the file you upload to Gumroad as the purchasable product
