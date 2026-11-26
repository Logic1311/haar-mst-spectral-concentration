import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum

open scoped BigOperators
open Finset
namespace HaarMST

-- A tree orientation supplies one incident edge at every nonroot vertex.
-- The existence of the orientation is proved in the manuscript, not here.
theorem parent_charge {ι : Type*} [Fintype ι] [DecidableEq ι]
    (root : ι) (parent : ι → ι) (b : ι → ℝ) (w : ι → ι → ℝ)
    (hb : ∀ i j, i ≠ j → b i ≤ w i j)
    (hp : ∀ i, i ≠ root → i ≠ parent i) :
    (∑ i ∈ univ.erase root, b i) ≤ ∑ i ∈ univ.erase root, w i (parent i) := by
  apply Finset.sum_le_sum
  intro i hi
  exact hb i (parent i) (hp i (Finset.mem_erase.mp hi).1)

-- The strongest rooted charge is not required: average over every root.
theorem averaged_charge {ι : Type*} [Fintype ι]
    (b : ι → ℝ) (cost : ℝ)
    (hroot : ∀ r, (∑ i, b i) - b r ≤ cost) :
    ((Fintype.card ι : ℝ) - 1) * (∑ i, b i) ≤ (Fintype.card ι : ℝ) * cost := by
  have h := Finset.sum_le_sum (s := (univ : Finset ι)) (fun r _ => hroot r)
  rw [Finset.sum_sub_distrib] at h
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul] at h
  linarith

-- A nonnegative row surrogate squeezed between lower and upper bounds.
theorem sandwich_error (lo x hi target : ℝ) (hl : lo ≤ x) (hh : x ≤ hi) :
    |x - target| ≤ |lo - target| + |hi - target| := by
  rw [abs_le]
  constructor <;> linarith [neg_abs_le (lo-target), le_abs_self (hi-target),
      abs_nonneg (lo-target), abs_nonneg (hi-target)]

-- Pairwise weighted-variance identity with ordered pairs (factor two).
theorem weighted_variance {ι : Type*} [Fintype ι]
    (p l : ι → ℝ) (hp : ∑ i, p i = 1) :
    (∑ i, ∑ j, p i * p j * (l i - l j)^2) =
      2 * ((∑ i, p i * l i ^ 2) - (∑ i, p i * l i)^2) := by
  calc
    _ = ∑ i, ∑ j, (p i * l i^2 * p j + p i * (p j * l j^2) -
        (2 * (p i * l i)) * (p j * l j)) := by
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          ring
    _ = ∑ i, (p i * l i^2 * (∑ j, p j) + p i * (∑ j, p j * l j^2) -
        (2 * (p i * l i)) * (∑ j, p j * l j)) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.mul_sum,
            ← Finset.mul_sum, ← Finset.mul_sum]
    _ = _ := by
      rw [Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.sum_mul,
        ← Finset.sum_mul, ← Finset.sum_mul, Finset.mul_sum]
      rw [← Finset.mul_sum, ← Finset.mul_sum]
      rw [hp]
      ring

-- Finite rational spectral normalization used at the critical exponent.
theorem critical_variance : (1/4 : ℝ) - (2/5)^2 = 9/100 := by norm_num

#print axioms HaarMST.parent_charge
#print axioms HaarMST.averaged_charge
#print axioms HaarMST.sandwich_error
#print axioms HaarMST.weighted_variance
#print axioms HaarMST.critical_variance
end HaarMST
