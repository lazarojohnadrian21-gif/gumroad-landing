Generate placeholder assets (ImageMagick)

This file explains how to create the placeholder PNG assets for the InkBloom MaxPack using the provided script.

Files created
- assets/inkbloom/grain_paper_fine.png (2000x2000)
- assets/inkbloom/grain_paper_coarse.png (2000x2000)
- assets/inkbloom/grain_bloom_edge.png (2000x2000)
- assets/inkbloom/grain_linen.png (2000x2000)
- assets/inkbloom/grain_speckle.png (2000x2000)
- assets/inkbloom/shape_soft_round.png (1024x1024)
- assets/inkbloom/shape_hard_round.png (1024x1024)
- assets/inkbloom/shape_tapered_tip.png (1024x1024)
- assets/inkbloom/shape_organic_blob.png (1024x1024)
- assets/inkbloom/shape_fine_line.png (1024x1024)
- assets/inkbloom/linen_field_journal.png (3000x4000)
- assets/inkbloom/aged_herbarium_page.png (3000x4000)

How to run
1. Install ImageMagick on your machine (https://imagemagick.org). Confirm either `magick` or `convert` is available in your PATH.
2. From the repo root run:

   chmod +x assets/generate_assets.sh
   ./assets/generate_assets.sh

3. The script will create the files listed above in `assets/inkbloom/`.

Notes
- These are procedurally generated placeholder assets intended to give you workable textures/shapes for building the brushset and for packaging a demo release. They are not hand-painted final assets.
- After running, review the generated PNGs and (optionally) replace any or all with hand-painted textures for better artistic control.
- If you want, upload the generated PNGs back to this branch or attach them to the GitHub release; I can then commit them and finish packaging the `.brushset`/zip and release.

If you want me to commit the generated files to the branch for you, you can either:
- Upload the generated PNGs here after running the script locally, or
- Ask me to procedurally generate the PNGs and commit them (I will need permission to generate and commit raster files).