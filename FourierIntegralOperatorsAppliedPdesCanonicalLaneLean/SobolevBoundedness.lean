import canonicalLaneMathlib.FourierOperatorAdmittedObject

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure SobolevBoundednessPackage (O : FourierOperatorAdmittedObject) where
  symbolClass : Type
  sobolevIndex : ℝ
  boundednessEstimate : Prop
  regularityTransfer : Prop

structure SobolevBoundednessEvidence {O : FourierOperatorAdmittedObject}
    (P : SobolevBoundednessPackage O) where
  boundednessEstimateClosed : P.boundednessEstimate
  regularityTransferClosed : P.regularityTransfer

def SobolevBoundednessClosed {O : FourierOperatorAdmittedObject}
    (P : SobolevBoundednessPackage O) : Prop :=
  P.boundednessEstimate ∧ P.regularityTransfer

theorem sobolev_boundedness_closed_from_evidence
    {O : FourierOperatorAdmittedObject}
    (P : SobolevBoundednessPackage O) (E : SobolevBoundednessEvidence P) :
    SobolevBoundednessClosed P := by
  exact And.intro E.boundednessEstimateClosed E.regularityTransferClosed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse