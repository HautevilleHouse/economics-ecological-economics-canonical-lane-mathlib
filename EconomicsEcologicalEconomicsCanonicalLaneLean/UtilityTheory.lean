import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

struct PreferenceRelation where
  agentType : Type u
  consumptionSet : Type v
  preference : consumptionSet → consumptionSet → Prop
  completeness : ∀ x y, preference x y ∨ preference y x
  transitivity : ∀ x y z, preference x y → preference y z → preference x z

struct UtilityFunction (P : PreferenceRelation) where
  utility : P.consumptionSet → ℝ
  representation : ∀ x y, P.preference x y ↔ utility x ≥ utility y

struct UtilityMaximizationPackage (P : PreferenceRelation) (U : UtilityFunction P) where
  budgetConstraint : P.consumptionSet → Prop
  optimalChoice : ∃ x, budgetConstraint x ∧ ∀ y, budgetConstraint y → U.utility y ≤ U.utility x

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse