import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FourierSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FourierAdmittedObject where
  space : FourierSpace
  smoothManifold : Prop
  pseudoDifferentialCalculus : Prop
  fourierIntegralOperatorModel : Type
  modelTopology : TopologicalSpace fourierIntegralOperatorModel
  parametrixConstructed : Prop
  conclusion : parametrixConstructed

structure FourierEndgameState where
  object : FourierAdmittedObject

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.parametrixConstructed

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse