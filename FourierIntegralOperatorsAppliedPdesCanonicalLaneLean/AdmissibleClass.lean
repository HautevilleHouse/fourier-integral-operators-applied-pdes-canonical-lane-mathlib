import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure AdmissibleClass where
  object : FourierAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FourierWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse