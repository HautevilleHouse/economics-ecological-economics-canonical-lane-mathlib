import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure NaturalCapitalStockPackage where
  resourceType : Type u
  stockLevel : Real
  regenerationRate : Real
  harvestRate : Real
  stockNonnegative : Prop
  regenerationPositive : Prop

structure NaturalCapitalStockEvidence (N : NaturalCapitalStockPackage) where
  stockNonnegativeClosed : N.stockNonnegative
  regenerationPositiveClosed : N.regenerationPositive

def NaturalCapitalStockClosed (N : NaturalCapitalStockPackage) : Prop :=
  N.stockNonnegative ∧ N.regenerationPositive

theorem natural_capital_stock_closed_from_evidence
    (N : NaturalCapitalStockPackage) (Ev : NaturalCapitalStockEvidence N) :
    NaturalCapitalStockClosed N := by
  exact And.intro Ev.stockNonnegativeClosed Ev.regenerationPositiveClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse