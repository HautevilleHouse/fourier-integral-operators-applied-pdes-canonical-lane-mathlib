import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure FourierIntegralOperatorPackage where
  phaseFunction : Type u
  amplitude : Type v
  symbolClass : Type w
  canonicalTransform : Prop
  compositionFormula : Prop
  boundednessOnSobolev : Prop

structure FourierIntegralOperatorEvidence (F : FourierIntegralOperatorPackage) where
  canonicalTransformClosed : F.canonicalTransform
  compositionFormulaClosed : F.compositionFormula
  boundednessOnSobolevClosed : F.boundednessOnSobolev

def FourierIntegralOperatorClosed (F : FourierIntegralOperatorPackage) : Prop :=
  F.canonicalTransform ∧ F.compositionFormula ∧ F.boundednessOnSobolev

theorem fourier_integral_operator_closed_from_evidence (F : FourierIntegralOperatorPackage) (E : FourierIntegralOperatorEvidence F) : FourierIntegralOperatorClosed F :=
  And.intro E.canonicalTransformClosed (And.intro E.compositionFormulaClosed E.boundednessOnSobolevClosed)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse