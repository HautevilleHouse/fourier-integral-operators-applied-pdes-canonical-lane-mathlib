import FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.FourierIntegralOperator

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure PhaseSpacePackage (F : FIOAdmittedObject) where
  phaseFunctionDefined : Prop
  symbolClass : Prop
  regularity : Prop
  compactSupport : Prop
  wellDefinedOperator : Prop

structure PhaseSpaceEvidence (F : FIOAdmittedObject) (P : PhaseSpacePackage F) where
  phaseFunctionDefinedClosed : P.phaseFunctionDefined
  symbolClassClosed : P.symbolClass
  regularityClosed : P.regularity
  compactSupportClosed : P.compactSupport
  wellDefinedOperatorClosed : P.wellDefinedOperator

def PhaseSpaceClosed (F : FIOAdmittedObject) (P : PhaseSpacePackage F) : Prop :=
  P.phaseFunctionDefined ∧ P.symbolClass ∧ P.regularity ∧ P.compactSupport ∧ P.wellDefinedOperator

theorem phase_space_closed_from_evidence (F : FIOAdmittedObject) (P : PhaseSpacePackage F)
    (E : PhaseSpaceEvidence F P) : PhaseSpaceClosed F P := by
  exact And.intro E.phaseFunctionDefinedClosed
    (And.intro E.symbolClassClosed
      (And.intro E.regularityClosed
        (And.intro E.compactSupportClosed E.wellDefinedOperatorClosed)))

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
