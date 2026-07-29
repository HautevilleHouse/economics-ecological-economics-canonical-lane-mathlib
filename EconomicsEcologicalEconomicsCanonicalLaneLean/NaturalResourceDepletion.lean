import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure NaturalResourceDepletionPackage where
  resourceStock : ℝ → ℝ
  extractionRate : ℝ → ℝ
  extractionCost : ℝ → ℝ
  resourcePrice : ℝ → ℝ
  regenerationFunction : ℝ → ℝ
  depletionConstraint : Prop
  hotellingRule : Prop
  sustainabilityCondition : Prop
  depletionConstraintTerm : depletionConstraint
  hotellingRuleTerm : hotellingRule
  sustainabilityConditionTerm : sustainabilityCondition

structure NaturalResourceDepletionEvidence (N : NaturalResourceDepletionPackage) where
  depletionConstraintClosed : N.depletionConstraint
  hotellingRuleClosed : N.hotellingRule
  sustainabilityConditionClosed : N.sustainabilityCondition

def NaturalResourceDepletionClosed (N : NaturalResourceDepletionPackage) : Prop :=
  N.depletionConstraint ∧ N.hotellingRule ∧ N.sustainabilityCondition

theorem natural_resource_depletion_closed_from_evidence
    (N : NaturalResourceDepletionPackage) (E : NaturalResourceDepletionEvidence N) :
    NaturalResourceDepletionClosed N := by
  exact And.intro E.depletionConstraintClosed
    (And.intro E.hotellingRuleClosed E.sustainabilityConditionClosed)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse