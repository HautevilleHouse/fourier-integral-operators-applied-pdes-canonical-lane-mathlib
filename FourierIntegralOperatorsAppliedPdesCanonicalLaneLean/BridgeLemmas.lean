import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FourierWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse