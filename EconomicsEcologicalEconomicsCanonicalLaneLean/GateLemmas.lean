import EconomicsEcologicalEconomicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.gateClosed

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
