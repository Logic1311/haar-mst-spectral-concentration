# Spectral concentration and reciprocal spanning trees under Haar conjugation — revision 2

AI-assisted analytical research manuscript, 26 November 2026. Authorship and affiliations pending verification. Not peer reviewed. No independent academic grade or exhaustive priority claim.

## Current results

- Complex Haar conjugation, arbitrary nonscalar deterministic spectra, fixed `0<q<2`: sharp spectrum-uniform L1 error `Theta(1/log n)` relative to the single-row inverse moment and to an explicit weighted exponential inverse moment. All spectral mass-partition subsequential constants, sharp endpoint constants and iff conditions are retained.
- Fixed dimension, any positive inverse power, real/complex Haar conjugation: exact cut small-ball exponents given by invariant Grassmannian codimensions; tree-cost tail exponent `beta*(n-m_max)/q`; moment of order `p` finite iff `p*q < beta*(n-m_max)`.
- Rank one (complex): critical logarithmic normalization at q=2 and positive stable-law limit for q>2. The general-spectrum supercritical large-n problem remains open.
- The bounded-standardized-spectrum reciprocal leading limit, the critical polynomial constant, universal logarithmic upper order, the recursive construction and conditional/inverse-moment estimates overlap prior work (not claimed new). The revised audit incorporates the full textual version of arXiv:2611.31583. No identical statement for the new all-spectrum quantitative/classification and fixed-dimensional tail results was located in the reviewed sources. This is not proof of worldwide priority.

## Files and integrity

- `manuscript_v2.pdf`, `manuscript_v2.tex`: current integrated manuscript.
- `REVISION_PROOF.md`, `PRIOR_ART_REVISION.md`: detailed added proofs and overlap analysis.
- `HaarMSTCore.lean`, `HaarMSTRevision.lean`, `lean_evidence/`, `lean_revision_evidence/`: two partial Lean modules, raw logs and nine representative axiom audits. Full probabilistic and geometric arguments are analytical, not formally verified.
- `verify_revision_exact.py`, `revision_exact_results.json`, `revision_exact.log`: new exact arithmetic and combinatorial checks, distinct from v1.
- `verify_exact.py`, `verify_haar.py`, associated records: original exact and floating-point checks; counts preserved, not rerun or double-counted.
- `history/HAAR_MST_PUBLIC_2026-11-26.zip`: original public package, preserved byte-for-byte. Root `manuscript.pdf` and `manuscript.tex` are historical v1.
- `ACCEPTANCE.json`, `REPRODUCE.md`, `MANIFEST.sha256`: verification boundaries and integrity.

See `REPRODUCE.md` for commands. No license selected by the owner. Public revision is a supplement to the existing fourth paper, not a separate paper.
