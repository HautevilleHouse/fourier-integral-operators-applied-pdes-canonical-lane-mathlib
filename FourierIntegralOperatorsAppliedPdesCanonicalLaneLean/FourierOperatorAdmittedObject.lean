import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure FourierOperatorAdmittedObject where
  operatorSpace : Type
  symbolSpace : Type
  phaseFunction : Type
  amplitudeFunction : Type
  boundedness : Prop
  conclusion : boundedness

def FourierWitnessClosed (O : FourierOperatorAdmittedObject) : Prop :=
  O.boundedness

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse