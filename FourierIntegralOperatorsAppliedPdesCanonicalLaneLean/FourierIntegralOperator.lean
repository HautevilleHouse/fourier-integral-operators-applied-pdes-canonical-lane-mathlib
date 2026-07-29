import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure FIOAdmittedObject where
  phaseFunction : Type u
  symbol : Type v
  amplitude : Type w
  operator : Type x
  phaseNondegenerate : Prop
  symbolClassDefined : Prop
  properlySupported : Prop
  conclusion : properlySupported ∧ symbolClassDefined ∧ phaseNondegenerate

structure AdmissibleClass where
  object : FIOAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
