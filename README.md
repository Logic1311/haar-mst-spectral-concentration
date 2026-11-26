# Spectral concentration and reciprocal spanning trees under Haar conjugation

AI-assisted research manuscript, 26 November 2026. Authorship and affiliations pending verification. Not peer reviewed. No independently certified academic grade or priority is claimed.

## Results
For arbitrary deterministic nonscalar real spectra conjugated by a complex Haar unitary and reciprocal-power spanning-tree costs, this work proves spectrum-uniform leading order in L1 for every fixed 0<q<2. The normalized tree cost has subsequential constants determined by the limiting decreasing squared spectral masses. These range sharply from 1 (diffuse spectrum) to Gamma(1-q/2) (one full spike). For q=1 the rank-one limit is sqrt(pi), not the diffuse constant 1. The universal finite-mean range is sharp at q=2. The variance-only vanishing criterion concerns the tree-cost upper bound, not a necessary condition for the optimal quantum-control time.

The bounded-spectrum reciprocal constant was already addressed in recent work (arXiv:2611.31583); the proposed contribution is unrestricted spectral classification, uniform L1, and the inverse-power extension. Full text of that recent preprint was unavailable; exhaustive novelty is not established.

## Package
- `manuscript.pdf`, `manuscript.tex`: full analytical paper.
- `PROOF.md`: detailed derivations and prior-art boundaries.
- `HaarMSTCore.lean`, `lean_evidence/`: partial formal core, source history and raw compiler logs; successful v2 checks five declarations. Haar probability and the full asymptotic assembly remain analytical.
- `verify_exact.py`, `exact_results.json`, `exact.log`: exact arithmetic checks; 80 graphs and 620 weighted-variance cases.
- `verify_haar.py`, `haar_samples.csv`, `haar_summary.json`, `haar.log`: 320 full Haar matrices, 960 nested exponent comparisons, floating-point diagnostics.
- `ADVERSARIAL_AUDIT.md`, `ACCEPTANCE.json`, `REPRODUCE.md`, `MANIFEST.sha256`: scope, checks, reproduction and integrity.

The companion ZIP contains the complete package. Verify its contents according to `REPRODUCE.md`. No license has been selected by the owner.
