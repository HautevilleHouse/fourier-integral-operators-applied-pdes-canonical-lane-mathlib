import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure FourierAdmittedObject where
  phaseFunctionClass : Type
  amplitudeClass : Type
  operatorSymbol : Type
  parametrixConstruction : Prop
  propagationOfSingularities : Prop
  conclusion : parametrixConstruction ∧ propagationOfSingularities

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.parametrixConstruction ∧ O.propagationOfSingularities

theorem fourier_witness_closed_from_object (O : FourierAdmittedObject) :
    FourierWitnessClosed O := by
  exact O.conclusion

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
