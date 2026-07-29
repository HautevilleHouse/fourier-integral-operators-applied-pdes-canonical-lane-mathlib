import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.PseudodifferentialCalculus

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure PropagationOfSingularitiesPackage {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} where
  waveFrontSet : Type u
  bicharacteristicFlow : Type v
  propagationLaw : Prop
  waveFrontSetContained : Prop
  propagationLawTerm : propagationLaw
  waveFrontSetContainedTerm : waveFrontSetContained

structure PropagationOfSingularitiesEvidence {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} (S : PropagationOfSingularitiesPackage P F C) where
  propagationLawClosed : S.propagationLaw
  waveFrontSetContainedClosed : S.waveFrontSetContained

def PropagationOfSingularitiesClosed {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} (S : PropagationOfSingularitiesPackage P F C) : Prop :=
  S.propagationLaw ∧ S.waveFrontSetContained

theorem propagation_of_singularities_closed_from_evidence {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} (S : PropagationOfSingularitiesPackage P F C) (E : PropagationOfSingularitiesEvidence S) : PropagationOfSingularitiesClosed S := by
  exact And.intro E.propagationLawClosed E.waveFrontSetContainedClosed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse