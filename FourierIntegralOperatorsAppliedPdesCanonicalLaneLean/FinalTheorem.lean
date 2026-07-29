import FourierIntegralOperatorsAppliedPdesCanonicalLaneLean.SingularityPropagation

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedFIOClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fio_endgame (A : AdmissibleClass) : ConstrainedFIOClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse
