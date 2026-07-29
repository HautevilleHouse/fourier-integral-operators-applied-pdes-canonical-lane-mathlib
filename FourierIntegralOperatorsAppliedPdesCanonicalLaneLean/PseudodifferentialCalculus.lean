import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.FourierIntegralOperatorKernel

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure PseudodifferentialCalculusPackage {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} where
  symbolClass : Type u
  quantizationMap : Type v
  compositionFormula : Prop
  symbolicCalculusClosed : Prop
  compositionFormulaTerm : compositionFormula
  symbolicCalculusClosedTerm : symbolicCalculusClosed

structure PseudodifferentialCalculusEvidence {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} (C : PseudodifferentialCalculusPackage P F) where
  compositionFormulaClosed : C.compositionFormula
  symbolicCalculusClosedClosed : C.symbolicCalculusClosed

def PseudodifferentialCalculusClosed {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} (C : PseudodifferentialCalculusPackage P F) : Prop :=
  C.compositionFormula ∧ C.symbolicCalculusClosed

theorem pseudodifferential_calculus_closed_from_evidence {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} (C : PseudodifferentialCalculusPackage P F) (E : PseudodifferentialCalculusEvidence C) : PseudodifferentialCalculusClosed C := by
  exact And.intro E.compositionFormulaClosed E.symbolicCalculusClosedClosed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse