import canonicalLaneMathlib.AdmissibleClass

/-!
# Propagation of Singularities for Fourier Integral Operators
This module defines the propagation package for wave front sets 
under Fourier integral operators.
-/

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure PropagationPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] where
  waveFrontSet : Type v
  canonicalRelation : Prop
  propagationLaw : Prop
  microlocalRegularity : Prop

structure PropagationEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (P : PropagationPackage M) where
  canonicalRelationClosed : P.canonicalRelation
  propagationLawClosed : P.propagationLaw
  microlocalRegularityClosed : P.microlocalRegularity

def PropagationClosed (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (P : PropagationPackage M) : Prop :=
  P.canonicalRelation ∧ P.propagationLaw ∧ P.microlocalRegularity

theorem propagation_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (P : PropagationPackage M) (E : PropagationEvidence M P) : PropagationClosed M P := by
  exact And.intro E.canonicalRelationClosed (And.intro E.propagationLawClosed E.microlocalRegularityClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
