import canonicalLaneMathlib.AdmissibleClass

/-!
# Parametrix Construction for Fourier Integral Operators
This module defines the parametrix package for constructing parametrices 
of pseudodifferential operators via Fourier integral operators.
-/

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure ParametrixPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] where
  manifold : M
  symbolSpace : Type v
  phaseFunction : M → symbolSpace → ℂ
  amplitude : M → symbolSpace → ℂ
  regularityParameters : Prop
  supportConditions : Prop
  parametrixProperty : Prop

structure ParametrixEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (P : ParametrixPackage M) where
  regularityParametersClosed : P.regularityParameters
  supportConditionsClosed : P.supportConditions
  parametrixPropertyClosed : P.parametrixProperty

def ParametrixClosed (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (P : ParametrixPackage M) : Prop :=
  P.regularityParameters ∧ P.supportConditions ∧ P.parametrixProperty

theorem parametrix_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (P : ParametrixPackage M) (E : ParametrixEvidence M P) : ParametrixClosed M P := by
  exact And.intro E.regularityParametersClosed (And.intro E.supportConditionsClosed E.parametrixPropertyClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
