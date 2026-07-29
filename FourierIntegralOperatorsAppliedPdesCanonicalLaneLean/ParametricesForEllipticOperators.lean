import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure ParametricesForEllipticOperatorsPackage where
  ellipticSymbol : Type u
  parametrixKernel : Type v
  parametrixProperty : Prop
  smoothingRemainder : Prop

def ParametricesForEllipticOperatorsClosed (P : ParametricesForEllipticOperatorsPackage) : Prop :=
  P.parametrixProperty ∧ P.smoothingRemainder

theorem parametrices_for_elliptic_operators_closed (P : ParametricesForEllipticOperatorsPackage) (h1 : P.parametrixProperty) (h2 : P.smoothingRemainder) : ParametricesForEllipticOperatorsClosed P :=
  And.intro h1 h2

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse