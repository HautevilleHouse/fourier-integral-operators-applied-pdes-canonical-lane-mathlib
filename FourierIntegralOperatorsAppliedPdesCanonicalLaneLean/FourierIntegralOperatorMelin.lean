import canonicalLaneMathlib.AdmissibleClass

/-!
# Melin Transform and Fourier Integral Operators
This module defines the Melin transform package for boundary value problems
using Fourier integral operators.
-/

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure MelinPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] where
  melinKernel : Type v
  complexExponent : Prop
  boundaryRegularity : Prop
  parametricesViaMelin : Prop

structure MelinEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (Mel : MelinPackage M) where
  complexExponentClosed : Mel.complexExponent
  boundaryRegularityClosed : Mel.boundaryRegularity
  parametricesViaMelinClosed : Mel.parametricesViaMelin

def MelinClosed (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (Mel : MelinPackage M) : Prop :=
  Mel.complexExponent ∧ Mel.boundaryRegularity ∧ Mel.parametricesViaMelin

theorem melin_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] 
    (Mel : MelinPackage M) (E : MelinEvidence M Mel) : MelinClosed M Mel := by
  exact And.intro E.complexExponentClosed (And.intro E.boundaryRegularityClosed E.parametricesViaMelinClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
