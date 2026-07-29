import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure BiodiversityFinancePackage where
  habitatType : Type u
  speciesRichness : Prop
  conservationCost : Prop
  paymentMechanism : Prop
  biodiversityBenefit : Prop

structure BiodiversityFinanceEvidence (B : BiodiversityFinancePackage) where
  habitatTypeClosed : B.habitatType
  speciesRichnessClosed : B.speciesRichness
  conservationCostClosed : B.conservationCost
  paymentMechanismClosed : B.paymentMechanism
  biodiversityBenefitClosed : B.biodiversityBenefit

def BiodiversityFinanceClosed (B : BiodiversityFinancePackage) : Prop :=
  B.habitatType ∧ B.speciesRichness ∧ B.conservationCost ∧ B.paymentMechanism ∧ B.biodiversityBenefit

theorem biodiversity_finance_closed_from_evidence (B : BiodiversityFinancePackage) (Ev : BiodiversityFinanceEvidence B) :
    BiodiversityFinanceClosed B := by
  exact And.intro Ev.habitatTypeClosed (And.intro Ev.speciesRichnessClosed (And.intro Ev.conservationCostClosed (And.intro Ev.paymentMechanismClosed Ev.biodiversityBenefitClosed)))

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse