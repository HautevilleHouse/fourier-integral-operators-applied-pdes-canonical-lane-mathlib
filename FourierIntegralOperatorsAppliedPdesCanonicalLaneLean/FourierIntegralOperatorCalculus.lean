import canonicalLaneMathlib.AdmissibleClass

/-!
# Calculus of Fourier Integral Operators
This module defines the calculus package for composition, adjoint, and 
continuity properties of Fourier integral operators.
-/

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure CalculusPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] where
  operatorSymbolType : Type v
  compositionFormula : Prop
  adjointFormula : Prop
  continuityEstimates : Prop

structure CalculusEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (C : CalculusPackage M) where
  compositionFormulaClosed : C.compositionFormula
  adjointFormulaClosed : C.adjointFormula
  continuityEstimatesClosed : C.continuityEstimates

def CalculusClosed (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (C : CalculusPackage M) : Prop :=
  C.compositionFormula ∧ C.adjointFormula ∧ C.continuityEstimates

theorem calculus_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (C : CalculusPackage M) (E : CalculusEvidence M C) : CalculusClosed M C := by
  exact And.intro E.compositionFormulaClosed (And.intro E.adjointFormulaClosed E.continuityEstimatesClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
