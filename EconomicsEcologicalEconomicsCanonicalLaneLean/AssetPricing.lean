import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

struct StochasticDiscountFactor where
  stateSpace : Type u
  discountFactor : stateSpace → ℝ
  positivity : ∀ s, discountFactor s > 0

struct AssetPayoff where
  assetType : Type v
  payoff : assetType → StochasticDiscountFactor.stateSpace → ℝ

struct AssetPricingPackage (S : StochasticDiscountFactor) (A : AssetPayoff) where
  price : A.assetType → ℝ
  fundamentalEquation : ∀ a, price a = ∑ s, S.discountFactor s * A.payoff a s
  noArbitrage : Prop

struct AssetPricingEvidence (S : StochasticDiscountFactor) (A : AssetPayoff)
    (P : AssetPricingPackage S A) where
  fundamentalEquationClosed : P.fundamentalEquation
  noArbitrageClosed : P.noArbitrage

def AssetPricingClosed (S : StochasticDiscountFactor) (A : AssetPayoff)
    (P : AssetPricingPackage S A) : Prop :=
  P.fundamentalEquation ∧ P.noArbitrage

theorem asset_pricing_closed_from_evidence (S : StochasticDiscountFactor) (A : AssetPayoff)
    (P : AssetPricingPackage S A) (E : AssetPricingEvidence S A P) : AssetPricingClosed S A P := by
  exact And.intro E.fundamentalEquationClosed E.noArbitrageClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse