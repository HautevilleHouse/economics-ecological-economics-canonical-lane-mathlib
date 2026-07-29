import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure PollutionControlPackage where
  emissionsPath : ℝ → ℝ
  pollutionStock : ℝ → ℝ
  damageFunction : ℝ → ℝ
  abatementCost : ℝ → ℝ
  policyInstrument : String
  emissionConstraint : Prop
  damageMitigation : Prop
  costEffectiveness : Prop
  emissionConstraintTerm : emissionConstraint
  damageMitigationTerm : damageMitigation
  costEffectivenessTerm : costEffectiveness

structure PollutionControlEvidence (P : PollutionControlPackage) where
  emissionConstraintClosed : P.emissionConstraint
  damageMitigationClosed : P.damageMitigation
  costEffectivenessClosed : P.costEffectiveness

def PollutionControlClosed (P : PollutionControlPackage) : Prop :=
  P.emissionConstraint ∧ P.damageMitigation ∧ P.costEffectiveness

theorem pollution_control_closed_from_evidence
    (P : PollutionControlPackage) (E : PollutionControlEvidence P) :
    PollutionControlClosed P := by
  exact And.intro E.emissionConstraintClosed
    (And.intro E.damageMitigationClosed E.costEffectivenessClosed)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse