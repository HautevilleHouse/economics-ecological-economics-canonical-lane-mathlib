import EconomicsEcologicalEconomicsCanonicalLaneLean.UtilityTheory

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure GrowthModelPackage {C : ArrowDebreuPackage} {U : UtilityPackage C} where
  capitalPath : ℕ → C.commoditySpace
  productionFunction : C.commoditySpace → C.commoditySpace
  initialEndowment : C.commoditySpace
  intertemporalOptimality : Prop
  resourceConstraint : Prop
  steadyState : Prop

def GrowthModelClosed {C : ArrowDebreuPackage} {U : UtilityPackage C} (G : GrowthModelPackage C U) : Prop :=
  G.intertemporalOptimality ∧ G.resourceConstraint ∧ G.steadyState

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
