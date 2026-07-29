import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.PropagationOfSingularities

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure SpectralAsymptoticsPackage {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} {S : PropagationOfSingularitiesPackage P F C} where
  eigenvalueAsymptotics : Prop
  weylLaw : Prop
  eigenvalueAsymptoticsTerm : eigenvalueAsymptotics
  weylLawTerm : weylLaw

structure SpectralAsymptoticsEvidence {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} {S : PropagationOfSingularitiesPackage P F C} (A : SpectralAsymptoticsPackage P F C S) where
  eigenvalueAsymptoticsClosed : A.eigenvalueAsymptotics
  weylLawClosed : A.weylLaw

def SpectralAsymptoticsClosed {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} {S : PropagationOfSingularitiesPackage P F C} (A : SpectralAsymptoticsPackage P F C S) : Prop :=
  A.eigenvalueAsymptotics ∧ A.weylLaw

theorem spectral_asymptotics_closed_from_evidence {P : PhaseSpaceSymplecticPackage} {F : FourierIntegralOperatorKernelPackage P} {C : PseudodifferentialCalculusPackage P F} {S : PropagationOfSingularitiesPackage P F C} (A : SpectralAsymptoticsPackage P F C S) (E : SpectralAsymptoticsEvidence A) : SpectralAsymptoticsClosed A := by
  exact And.intro E.eigenvalueAsymptoticsClosed E.weylLawClosed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse