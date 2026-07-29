import canonicalLaneMathlib.SobolevBoundedness

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure ParametrixConstructionPackage {O : FourierOperatorAdmittedObject}
    (S : SobolevBoundednessPackage O) where
  parametrices : Type
  approximateInverse : Prop
  errorTermControl : Prop
  symbolExpansion : Prop

structure ParametrixConstructionEvidence {O : FourierOperatorAdmittedObject}
    {S : SobolevBoundednessPackage O} (P : ParametrixConstructionPackage S) where
  approximateInverseClosed : P.approximateInverse
  errorTermControlClosed : P.errorTermControl
  symbolExpansionClosed : P.symbolExpansion

def ParametrixConstructionClosed {O : FourierOperatorAdmittedObject}
    {S : SobolevBoundednessPackage O} (P : ParametrixConstructionPackage S) : Prop :=
  P.approximateInverse ∧ P.errorTermControl ∧ P.symbolExpansion

theorem parametrix_construction_closed_from_evidence
    {O : FourierOperatorAdmittedObject} {S : SobolevBoundednessPackage O}
    (P : ParametrixConstructionPackage S) (E : ParametrixConstructionEvidence P) :
    ParametrixConstructionClosed P := by
  exact And.intro E.approximateInverseClosed
    (And.intro E.errorTermControlClosed E.symbolExpansionClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse