import EconomicsEcologicalEconomicsCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlibCore

structure EconomicAgent where
  preferences : Type
  endowments : Type
  rationalityAssumption : Prop

structure EcologicalSystem where
  resourceStock : Type
  regenerationRate : Prop
  ecologicalThreshold : Prop

structure EcosystemService where
  serviceType : Type
  valuation : Prop
  sustainability : Prop

structure AdmissibleClass where
  agent : EconomicAgent
  ecosystem : EcologicalSystem
  service : EcosystemService
  bridgeClosed : Prop
  gateClosed : Prop
  bridgeWitness : bridgeClosed
  gateWitness : gateClosed

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.bridgeClosed ∧ A.gateClosed

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
