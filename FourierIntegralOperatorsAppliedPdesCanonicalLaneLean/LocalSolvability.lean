import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourierIntegralOperatorsAppliedPdesCanonicalLaneLean

structure LocalSolvabilityPackage where
  principalSymbol : Type u
  localSolvabilityCondition : Prop
  constructionOfParametrix : Prop
  solvabilityResult : Prop

def LocalSolvabilityClosed (L : LocalSolvabilityPackage) : Prop :=
  L.localSolvabilityCondition ∧ L.constructionOfParametrix ∧ L.solvabilityResult

theorem local_solvability_closed (L : LocalSolvabilityPackage) (h1 : L.localSolvabilityCondition) (h2 : L.constructionOfParametrix) (h3 : L.solvabilityResult) : LocalSolvabilityClosed L :=
  And.intro h1 (And.intro h2 h3)

end FourierIntegralOperatorsAppliedPdesCanonicalLaneLean
end HautevilleHouse