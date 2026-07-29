import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure SocialCostCarbonPackage where
  emissionScenario : Type u
  damageFunction : emissionScenario -> Real
  discountFactor : Real
  socialCostCalculated : Prop
  damageFunctionContinuous : Prop

structure SocialCostCarbonEvidence (S : SocialCostCarbonPackage) where
  socialCostCalculatedClosed : S.socialCostCalculated
  damageFunctionContinuousClosed : S.damageFunctionContinuous

def SocialCostCarbonClosed (S : SocialCostCarbonPackage) : Prop :=
  S.socialCostCalculated ∧ S.damageFunctionContinuous

theorem social_cost_carbon_closed_from_evidence
    (S : SocialCostCarbonPackage) (Ev : SocialCostCarbonEvidence S) :
    SocialCostCarbonClosed S := by
  exact And.intro Ev.socialCostCalculatedClosed Ev.damageFunctionContinuousClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse