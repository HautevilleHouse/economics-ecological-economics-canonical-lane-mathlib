import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure EcologicalEconomicEquilibriumPackage (E : EcosystemServiceValuationPackage) (N : NaturalCapitalStockPackage) (M : EcologicalMacroeconomicModelPackage E N) where
  marketClearing : Prop
  resourceConstraintSatisfied : Prop
  equilibriumExistence : Prop
  welfareOptimal : Prop

structure EcologicalEconomicEquilibriumEvidence {E : EcosystemServiceValuationPackage} {N : NaturalCapitalStockPackage} {M : EcologicalMacroeconomicModelPackage E N}
    (Eq : EcologicalEconomicEquilibriumPackage E N M) where
  marketClearingClosed : Eq.marketClearing
  resourceConstraintSatisfiedClosed : Eq.resourceConstraintSatisfied
  equilibriumExistenceClosed : Eq.equilibriumExistence
  welfareOptimalClosed : Eq.welfareOptimal

def EcologicalEconomicEquilibriumClosed {E : EcosystemServiceValuationPackage} {N : NaturalCapitalStockPackage} {M : EcologicalMacroeconomicModelPackage E N}
    (Eq : EcologicalEconomicEquilibriumPackage E N M) : Prop :=
  Eq.marketClearing ∧ Eq.resourceConstraintSatisfied ∧ Eq.equilibriumExistence ∧ Eq.welfareOptimal

theorem ecological_economic_equilibrium_closed_from_evidence
    {E : EcosystemServiceValuationPackage} {N : NaturalCapitalStockPackage} {M : EcologicalMacroeconomicModelPackage E N}
    (Eq : EcologicalEconomicEquilibriumPackage E N M) (Ev : EcologicalEconomicEquilibriumEvidence Eq) :
    EcologicalEconomicEquilibriumClosed Eq := by
  exact And.intro Ev.marketClearingClosed
    (And.intro Ev.resourceConstraintSatisfiedClosed
      (And.intro Ev.equilibriumExistenceClosed Ev.welfareOptimalClosed))

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse