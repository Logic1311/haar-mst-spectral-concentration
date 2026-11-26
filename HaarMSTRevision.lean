import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset

open scoped BigOperators

namespace HaarMSTRevision

/-- Scalar inequality behind rounding each eigenvalue of a positive contraction
    to the nearest projection eigenvalue (with ties rounded down). -/
theorem round_scalar (x : ℝ) (hx : 0 ≤ x) (hx1 : x ≤ 1) :
    |x - (if x ≤ 1 / 2 then 0 else 1)| ≤ 2 * x * (1 - x) := by
  by_cases h : x ≤ 1 / 2
  · rw [if_pos h, sub_zero, abs_of_nonneg hx]
    have hprod := mul_nonneg hx (show 0 ≤ 1 - 2*x by linarith)
    nlinarith
  · rw [if_neg h, abs_of_nonpos (sub_nonpos.mpr hx1)]
    have hprod := mul_nonneg (show 0 ≤ 1-x by linarith)
      (show 0 ≤ 2*x-1 by linarith)
    nlinarith

/-- The two arithmetic cut estimates in the complete multipartite graph proof.
    `d` is the number of vertices outside a largest part of size `M`.
    `a,b` count inside/outside that part on the smaller cut side.
    `hdegree` is the degree-count bound; `hcross` counts only cross edges
    incident with the largest part. The hypotheses encode integer counts. -/
theorem multipartite_cut_lower (d M k a b c : ℝ)
    (hk : 1 ≤ k) (hside : 2*k ≤ M+d)
    (hsize : a+b=k) (hb0 : 0 ≤ b) (hbd : b ≤ d)
    (ha_int : a = 0 ∨ 1 ≤ a)
    (hMa_int : M-a = 0 ∨ 1 ≤ M-a)
    (hdegree : k*(d-k+1) ≤ c)
    (hcross : a*(d-b)+(M-a)*b ≤ c) : d ≤ c := by
  by_cases h : k ≤ d
  · have hp := mul_nonneg (show 0 ≤ k-1 by linarith) (show 0 ≤ d-k by linarith)
    nlinarith
  · have ha : 1 ≤ a := by
      rcases ha_int with ha | ha
      · exfalso
        linarith
      · exact ha
    have hMa : 1 ≤ M-a := by
      rcases hMa_int with hm | hm
      · exfalso
        linarith
      · exact hm
    have h1 := mul_nonneg (show 0 ≤ a-1 by linarith) (show 0 ≤ d-b by linarith)
    have h2 := mul_nonneg (show 0 ≤ M-a-1 by linarith) hb0
    nlinarith

/-- The increment in the contribution of one eigenspace to the Grassmann
    dimension when its selected dimension increases by one. -/
theorem marginal_gain (m r : ℝ) :
    (r+1)*(m-(r+1))-r*(m-r)=m-1-2*r := by ring

/-- Two-sided deterministic bottleneck-to-cost comparison in algebraic form.
    `lower` is the cost of the worst cut's unavoidable edge; the retained-edge
    spanning tree has `n-1` edges each bounded above by `lower`. -/
theorem bottleneck_squeeze {ι : Type*} [Fintype ι]
    (lower cost : ℝ) (w : ι → ℝ)
    (hlo : lower ≤ cost) (hupper : cost ≤ ∑ i, w i)
    (hw : ∀ i, w i ≤ lower) :
    lower ≤ cost ∧ cost ≤ (Fintype.card ι : ℝ) * lower := by
  classical
  constructor
  · exact hlo
  · calc
      cost ≤ ∑ i, w i := hupper
      _ ≤ ∑ _i : ι, lower := Finset.sum_le_sum (fun i _ => hw i)
      _ = (Fintype.card ι : ℝ) * lower := by simp [nsmul_eq_mul]

#print axioms HaarMSTRevision.round_scalar
#print axioms HaarMSTRevision.multipartite_cut_lower
#print axioms HaarMSTRevision.marginal_gain
#print axioms HaarMSTRevision.bottleneck_squeeze
end HaarMSTRevision
