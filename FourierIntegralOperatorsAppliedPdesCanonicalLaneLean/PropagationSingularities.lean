import FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.PhaseSpace

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure SingularityPropagationPackage {F : FIOAdmittedObject}
    (P : PhaseSpacePackage F) where
  wavefrontSet : Prop
  propagationLaw : Prop
  compositionRule : Prop
  parametricesExist : Prop

structure SingularityPropagationEvidence {F : FIOAdmittedObject}
    {P : PhaseSpacePackage F} (S : SingularityPropagationPackage P) where
  wavefrontSetClosed : S.wavefrontSet
  propagationLawClosed : S.propagationLaw
  compositionRuleClosed : S.compositionRule
  parametricesExistClosed : S.parametricesExist

def SingularityPropagationClosed {F : FIOAdmittedObject}
    {P : PhaseSpacePackage F} (S : SingularityPropagationPackage P) : Prop :=
  S.wavefrontSet ∧ S.propagationLaw ∧ S.compositionRule ∧ S.parametricesExist

theorem singularity_propagation_closed_from_evidence {F : FIOAdmittedObject}
    {P : PhaseSpacePackage F} (S : SingularityPropagationPackage P)
    (E : SingularityPropagationEvidence S) : SingularityPropagationClosed S := by
  exact And.intro E.wavefrontSetClosed
    (And.intro E.propagationLawClosed
      (And.intro E.compositionRuleClosed E.parametricesExistClosed))

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
