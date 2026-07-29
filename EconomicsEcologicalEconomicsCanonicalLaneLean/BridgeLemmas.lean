import EconomicsEcologicalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.bridgeClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.bridgeWitness

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
