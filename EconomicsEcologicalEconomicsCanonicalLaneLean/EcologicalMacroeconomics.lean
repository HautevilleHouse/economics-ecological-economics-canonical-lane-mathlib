import EconomicsEcologicalEconomicsCanonicalLaneLean.AssetPricingBridge

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure EcologicalMacroeconomicsPackage {C : ArrowDebreuPackage} {U : UtilityPackage C} {G : GrowthModelPackage C U} {A : AssetPricingPackage C U G} where
  naturalCapital : Type v
  ecosystemService : C.commoditySpace → ℝ
  ecologicalConstraint : Prop
  sustainabilityCondition : Prop
  resilienceMeasure : Prop

def EcologicalMacroeconomicsClosed {C : ArrowDebreuPackage} {U : UtilityPackage C} {G : GrowthModelPackage C U} {A : AssetPricingPackage C U G} (E : EcologicalMacroeconomicsPackage C U G A) : Prop :=
  E.ecologicalConstraint ∧ E.sustainabilityCondition ∧ E.resilienceMeasure

theorem ecological_macroeconomics_closed_from_evidence {C : ArrowDebreuPackage} {U : UtilityPackage C} {G : GrowthModelPackage C U} {A : AssetPricingPackage C U G} (E : EcologicalMacroeconomicsPackage C U G A) (h : EcologicalMacroeconomicsClosed E) :
  E.sustainabilityCondition := h.right.left

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
