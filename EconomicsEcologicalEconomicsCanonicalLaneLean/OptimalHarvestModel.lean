import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure OptimalHarvestPackage where
  populationDynamics : Type u
  harvestFunction : Prop
  objectiveFunctional : Prop
  discountRate : Prop
  steadyStateSolution : Prop

structure OptimalHarvestEvidence (H : OptimalHarvestPackage) where
  populationDynamicsClosed : H.populationDynamics
  harvestFunctionClosed : H.harvestFunction
  objectiveFunctionalClosed : H.objectiveFunctional
  discountRateClosed : H.discountRate
  steadyStateSolutionClosed : H.steadyStateSolution

def OptimalHarvestClosed (H : OptimalHarvestPackage) : Prop :=
  H.populationDynamics ∧ H.harvestFunction ∧ H.objectiveFunctional ∧ H.discountRate ∧ H.steadyStateSolution

theorem optimal_harvest_closed_from_evidence (H : OptimalHarvestPackage) (Ev : OptimalHarvestEvidence H) :
    OptimalHarvestClosed H := by
  exact And.intro Ev.populationDynamicsClosed (And.intro Ev.harvestFunctionClosed (And.intro Ev.objectiveFunctionalClosed (And.intro Ev.discountRateClosed Ev.steadyStateSolutionClosed)))

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse