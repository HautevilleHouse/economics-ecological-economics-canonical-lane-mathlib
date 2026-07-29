import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure NaturalCapitalPackage where
  ecosystemServices : Prop
  resourceStocks : Prop
  sustainabilityCriteria : Prop

structure NaturalCapitalEvidence (N : NaturalCapitalPackage) where
  ecosystemServicesClosed : N.ecosystemServices
  resourceStocksClosed : N.resourceStocks
  sustainabilityCriteriaClosed : N.sustainabilityCriteria

def NaturalCapitalClosed (N : NaturalCapitalPackage) : Prop :=
  N.ecosystemServices ∧ N.resourceStocks ∧ N.sustainabilityCriteria

theorem natural_capital_closed_from_evidence (N : NaturalCapitalPackage) (E : NaturalCapitalEvidence N) : NaturalCapitalClosed N := by
  exact And.intro E.ecosystemServicesClosed (And.intro E.resourceStocksClosed E.sustainabilityCriteriaClosed)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
