import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure ParametricesForWaveEquationPackage where
  waveOperator : Type u
  parametrixConstruction : Type v
  approximateSolution : Type w
  parametrixExists : Prop
  errorTermSmoothing : Prop
  solutionApproximation : Prop

structure ParametricesForWaveEquationEvidence (P : ParametricesForWaveEquationPackage) where
  parametrixExistsClosed : P.parametrixExists
  errorTermSmoothingClosed : P.errorTermSmoothing
  solutionApproximationClosed : P.solutionApproximation

def ParametricesForWaveEquationClosed (P : ParametricesForWaveEquationPackage) : Prop :=
  P.parametrixExists ∧ P.errorTermSmoothing ∧ P.solutionApproximation

theorem parametrices_for_wave_equation_closed_from_evidence
    (P : ParametricesForWaveEquationPackage) (E : ParametricesForWaveEquationEvidence P) :
    ParametricesForWaveEquationClosed P := by
  exact And.intro E.parametrixExistsClosed
    (And.intro E.errorTermSmoothingClosed E.solutionApproximationClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse