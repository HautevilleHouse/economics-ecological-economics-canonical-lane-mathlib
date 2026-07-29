import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure EcologicalMacroPackage where
  productionFunction : Type u
  resourceConstraint : Prop
  pollutionStock : Prop
  abatementSector : Prop
  steadyStateGrowth : Prop

structure EcologicalMacroEvidence (M : EcologicalMacroPackage) where
  productionFunctionClosed : M.productionFunction
  resourceConstraintClosed : M.resourceConstraint
  pollutionStockClosed : M.pollutionStock
  abatementSectorClosed : M.abatementSector
  steadyStateGrowthClosed : M.steadyStateGrowth

def EcologicalMacroClosed (M : EcologicalMacroPackage) : Prop :=
  M.productionFunction ∧ M.resourceConstraint ∧ M.pollutionStock ∧ M.abatementSector ∧ M.steadyStateGrowth

theorem ecological_macro_closed_from_evidence (M : EcologicalMacroPackage) (Ev : EcologicalMacroEvidence M) :
    EcologicalMacroClosed M := by
  exact And.intro Ev.productionFunctionClosed (And.intro Ev.resourceConstraintClosed (And.intro Ev.pollutionStockClosed (And.intro Ev.abatementSectorClosed Ev.steadyStateGrowthClosed)))

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse