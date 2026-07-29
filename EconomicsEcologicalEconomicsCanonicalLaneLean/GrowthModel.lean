import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

struct ProductionFunction where
  capitalInput : Type u
  laborInput : Type v
  output : Type w
  cobbDouglas : Prop

struct GrowthModelPackage (P : ProductionFunction) where
  savingRate : ℝ
  depreciationRate : ℝ
  populationGrowth : ℝ
  technologicalProgress : ℝ
  steadyStateCapital : Prop
  goldenRuleCapital : Prop

struct GrowthModelEvidence (P : ProductionFunction) (G : GrowthModelPackage P) where
  steadyStateCapitalClosed : G.steadyStateCapital
  goldenRuleCapitalClosed : G.goldenRuleCapital

def GrowthModelClosed (P : ProductionFunction) (G : GrowthModelPackage P) : Prop :=
  G.steadyStateCapital ∧ G.goldenRuleCapital

theorem growth_model_closed_from_evidence (P : ProductionFunction) (G : GrowthModelPackage P)
    (E : GrowthModelEvidence P G) : GrowthModelClosed P G := by
  exact And.intro E.steadyStateCapitalClosed E.goldenRuleCapitalClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse