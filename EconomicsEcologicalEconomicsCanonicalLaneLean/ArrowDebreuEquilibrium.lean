import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

struct ArrowDebreuCommoditySpace where
  commodityTypes : Nat
  priceSpace : Type u
  allocationSpace : Type v
  pricePositivity : Prop
  marketClearing : Prop

struct ArrowDebreuEquilibriumPackage where
  commoditySpace : ArrowDebreuCommoditySpace
  priceVector : commoditySpace.priceSpace
  allocation : commoditySpace.allocationSpace
  utilityMaximization : Prop
  profitMaximization : Prop
  marketClearingCondition : commoditySpace.marketClearing

struct ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  utilityMaximizationClosed : A.utilityMaximization
  profitMaximizationClosed : A.profitMaximization
  marketClearingConditionClosed : A.marketClearingCondition

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.utilityMaximization ∧ A.profitMaximization ∧ A.marketClearingCondition

theorem arrow_debreu_equilibrium_closed_from_evidence
    (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.utilityMaximizationClosed
    (And.intro E.profitMaximizationClosed E.marketClearingConditionClosed)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse