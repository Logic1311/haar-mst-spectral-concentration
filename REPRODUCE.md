# Reproduction

Run in an extracted copy of the archive, leaving the archived data unchanged. Do not use Python -O; the verifiers use assertions.

```sh
sha256sum -c MANIFEST.sha256
python verify_exact.py
python verify_haar.py
```

Recorded environment: Python 3.13.5, NumPy 2.3.5, SciPy 1.17.0. Both scripts use seed 261131583. The exact code uses fractions.Fraction, exhaustive Pruefer trees and Kruskal, and checks root/hub bounds and weighted-variance identities. The numerical code uses actual complex Gaussian QR Haar sampling, independent Prim and SciPy/Kruskal checks, row-energy identities and rank-one exact-star formula. Raw sample results can differ across numerical environments; do not treat floating-point equality as an exact certificate. Reproduction of the full Haar experiment can take time.

Lean: use Lean 4.28.0 (commit 7e01a1bf5c70fc6167d49c345d3bf80596e9a79b) with mathlib revision 8f9d9cff6bd728b17a24e163c9402775d9e6a365. From the mathlib checkout execute `lake env lean /absolute/path/to/HaarMSTCore.lean`. Original Windows check used the existing compiled mathlib path. `lean_evidence/` preserves both the failed v1 and successful v2; active source is exactly v2. Expected five axiom lines with propext, Classical.choice, Quot.sound only. This is partial formalization, not a formal proof of the full asymptotic theorem.

PDF: `pdflatex -interaction=nonstopmode -halt-on-error manuscript.tex` twice. Cross-environment byte-identical PDF generation is not promised.

## Revision 2

In the same extracted package run `python verify_revision_exact.py` (Python 3.13.5, SymPy 1.14.0, seed 261131584). The new verifier compares brute-force allocation, dynamic programming and sorted marginal gains; explicitly counts labelled multipartite cuts; verifies exact rational projection identities; and cross-checks Prim/Kruskal and cut bounds. The report distinguishes structural input cases from nested allocations and scalar grid points. It does not prove tube-volume scaling or the full convergence theorem.

Use the same Lean/mathlib environment to execute `lake env lean /absolute/path/to/HaarMSTRevision.lean`. This is an independent module importing only mathlib, with four standard-axiom audits and exit 0 in the recorded Windows execution. The scalar rounding and graph inequalities have explicit hypotheses; geometric and probabilistic theorem assembly is not formalized. The original v1 compilation failure remains in its evidence folder.

Build the current paper using `pdflatex -interaction=nonstopmode -halt-on-error manuscript_v2.tex` twice. The original v1 ZIP under `history/` is preserved with SHA-256 `cf252fe3759e6094d34df33c7d7a28da83a0971fcda6f5fbce64c4b6f07d4985`; its internal manifest has 26 payloads.
