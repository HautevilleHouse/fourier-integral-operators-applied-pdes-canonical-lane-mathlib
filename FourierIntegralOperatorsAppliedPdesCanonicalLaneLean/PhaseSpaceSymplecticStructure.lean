import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure PhaseSpaceSymplecticPackage where
  symplecticForm : Type u
  canonicalCoordinates : Type v
  hamiltonianVectorField : Type w
  symplecticTwoFormClosed : Prop
  nondegeneracy : Prop
  symplecticTwoFormClosedTerm : symplecticTwoFormClosed
  nondegeneracyTerm : nondegeneracy

structure PhaseSpaceSymplecticEvidence (P : PhaseSpaceSymplecticPackage) where
  symplecticTwoFormClosedClosed : P.symplecticTwoFormClosed
  nondegeneracyClosed : P.nondegeneracy

def PhaseSpaceSymplecticClosed (P : PhaseSpaceSymplecticPackage) : Prop := P.symplecticTwoFormClosed ∧ P.nondegeneracy

theorem phase_space_symplectic_closed_from_evidence (P : PhaseSpaceSymplecticPackage) (E : PhaseSpaceSymplecticEvidence P) : PhaseSpaceSymplecticClosed P := by
  exact And.intro E.symplecticTwoFormClosedClosed E.nondegeneracyClosed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse