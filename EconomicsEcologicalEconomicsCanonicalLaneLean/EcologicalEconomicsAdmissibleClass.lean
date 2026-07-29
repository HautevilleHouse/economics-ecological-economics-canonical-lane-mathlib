import EconomicsEcologicalEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EcologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EcologicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse
