import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure EcosystemServiceValuationPackage where
  ecosystemType : Type u
  serviceFlow : Type v
  valuationFunction : ecosystemType -> serviceFlow -> Real
  discountRate : Real
  sustainableYieldBound : Prop

structure EcosystemServiceValuationEvidence (E : EcosystemServiceValuationPackage) where
  valuationFunctionDefined : Prop
  discountRatePositive : E.discountRate > 0
  sustainableYieldBoundClosed : E.sustainableYieldBound

def EcosystemServiceValuationClosed (E : EcosystemServiceValuationPackage) : Prop :=
  E.sustainableYieldBound

theorem ecosystem_service_valuation_closed_from_evidence
    (E : EcosystemServiceValuationPackage) (Ev : EcosystemServiceValuationEvidence E) :
    EcosystemServiceValuationClosed E := by
  exact Ev.sustainableYieldBoundClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse