import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

def ConstrainedEconomicsEcologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_ecological_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsEcologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse