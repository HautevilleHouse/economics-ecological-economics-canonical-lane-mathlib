import EconomicsEcologicalEconomicsCanonicalLaneLean.GrowthModelBridge

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure AssetPricingPackage {C : ArrowDebreuPackage} {U : UtilityPackage C} {G : GrowthModelPackage C U} where
  stochasticDiscountFactor : ℕ → ℝ
  assetPrice : ℕ → ℝ
  noArbitrageCondition : Prop
  riskNeutralValuation : Prop
  marketEfficiency : Prop

def AssetPricingClosed {C : ArrowDebreuPackage} {U : UtilityPackage C} {G : GrowthModelPackage C U} (A : AssetPricingPackage C U G) : Prop :=
  A.noArbitrageCondition ∧ A.riskNeutralValuation ∧ A.marketEfficiency

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
