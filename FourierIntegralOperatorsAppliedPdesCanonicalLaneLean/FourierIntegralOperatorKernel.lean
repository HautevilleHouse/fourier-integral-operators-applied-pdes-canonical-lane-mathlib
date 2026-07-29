import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.PhaseSpaceSymplecticStructure

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure FourierIntegralOperatorKernelPackage {P : PhaseSpaceSymplecticPackage} where
  lagrangianSubmanifold : Type u
  phaseFunction : Type v
  amplitude : Type w
  symbolicEstimate : Prop
  oscillatoryIntegralRepresentation : Prop
  symbolicEstimateTerm : symbolicEstimate
  oscillatoryIntegralRepresentationTerm : oscillatoryIntegralRepresentation

structure FourierIntegralOperatorKernelEvidence {P : PhaseSpaceSymplecticPackage} (F : FourierIntegralOperatorKernelPackage P) where
  symbolicEstimateClosed : F.symbolicEstimate
  oscillatoryIntegralRepresentationClosed : F.oscillatoryIntegralRepresentation

def FourierIntegralOperatorKernelClosed {P : PhaseSpaceSymplecticPackage} (F : FourierIntegralOperatorKernelPackage P) : Prop :=
  F.symbolicEstimate ∧ F.oscillatoryIntegralRepresentation

theorem fourier_integral_operator_kernel_closed_from_evidence {P : PhaseSpaceSymplecticPackage} (F : FourierIntegralOperatorKernelPackage P) (E : FourierIntegralOperatorKernelEvidence F) : FourierIntegralOperatorKernelClosed F := by
  exact And.intro E.symbolicEstimateClosed E.oscillatoryIntegralRepresentationClosed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse