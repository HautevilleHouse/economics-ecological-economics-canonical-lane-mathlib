import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure EcologicalMacroeconomicModelPackage (E : EcosystemServiceValuationPackage) (N : NaturalCapitalStockPackage) where
  aggregateOutput : Real
  naturalCapitalInputCoeff : Real
  laborInputCoeff : Real
  balancedGrowthPath : Prop
  steadyStateExistence : Prop

structure EcologicalMacroeconomicModelEvidence {E : EcosystemServiceValuationPackage} {N : NaturalCapitalStockPackage}
    (M : EcologicalMacroeconomicModelPackage E N) where
  balancedGrowthPathClosed : M.balancedGrowthPath
  steadyStateExistenceClosed : M.steadyStateExistence

def EcologicalMacroeconomicModelClosed {E : EcosystemServiceValuationPackage} {N : NaturalCapitalStockPackage}
    (M : EcologicalMacroeconomicModelPackage E N) : Prop :=
  M.balancedGrowthPath ∧ M.steadyStateExistence

theorem ecological_macroeconomic_model_closed_from_evidence
    {E : EcosystemServiceValuationPackage} {N : NaturalCapitalStockPackage}
    (M : EcologicalMacroeconomicModelPackage E N) (Ev : EcologicalMacroeconomicModelEvidence M) :
    EcologicalMacroeconomicModelClosed M := by
  exact And.intro Ev.balancedGrowthPathClosed Ev.steadyStateExistenceClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse