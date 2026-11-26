# Reproduction of latest revision

Extract into an empty directory. Verify `sha256sum -c MANIFEST.sha256` before running code. Run `python verify_geometry_refinement.py` without `-O` (assertions are checks). Install SymPy and SciPy; floating-point beta/volume calibrations are distinguished from exact rational checks.

Compile `pdflatex -interaction=nonstopmode -halt-on-error manuscript_v3.tex` twice. Original tests/Lean evidence and environment in REPRODUCE.md are preserved; no new Lean compile is claimed. Prior archive at `history/HAAR_MST_PUBLIC_v2_2026-11-26.zip`.
