import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

struct EcosystemService where
  serviceType : Type u
  value : serviceType → ℝ
  renewable : Prop

struct EcologicalEconomicsPackage (E : EcosystemService) where
  sustainabilityConstraint : ℝ
  carryingCapacity : ℝ
  steadyStateResourceUse : Prop
  biodiversityPreservation : Prop
  intergenerationalEquity : Prop

struct EcologicalEconomicsEvidence (E : EcosystemService) (P : EcologicalEconomicsPackage E) where
  steadyStateResourceUseClosed : P.steadyStateResourceUse
  biodiversityPreservationClosed : P.biodiversityPreservation
  intergenerationalEquityClosed : P.intergenerationalEquity

def EcologicalEconomicsClosed (E : EcosystemService) (P : EcologicalEconomicsPackage E) : Prop :=
  P.steadyStateResourceUse ∧ P.biodiversityPreservation ∧ P.intergenerationalEquity

theorem ecological_economics_closed_from_evidence (E : EcosystemService)
    (P : EcologicalEconomicsPackage E) (Ev : EcologicalEconomicsEvidence E P) :
    EcologicalEconomicsClosed E P := by
  exact And.intro Ev.steadyStateResourceUseClosed
    (And.intro Ev.biodiversityPreservationClosed Ev.intergenerationalEquityClosed)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse