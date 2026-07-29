import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEcologicalEconomicsCanonicalLaneLean

structure CommonPoolResourcePackage where
  resourceType : Type u
  userGroup : Prop
  appropriationRule : Prop
  monitoringEnforcement : Prop
  sustainabilityOutcome : Prop

structure CommonPoolResourceEvidence (C : CommonPoolResourcePackage) where
  resourceTypeClosed : C.resourceType
  userGroupClosed : C.userGroup
  appropriationRuleClosed : C.appropriationRule
  monitoringEnforcementClosed : C.monitoringEnforcement
  sustainabilityOutcomeClosed : C.sustainabilityOutcome

def CommonPoolResourceClosed (C : CommonPoolResourcePackage) : Prop :=
  C.resourceType ∧ C.userGroup ∧ C.appropriationRule ∧ C.monitoringEnforcement ∧ C.sustainabilityOutcome

theorem common_pool_resource_closed_from_evidence (C : CommonPoolResourcePackage) (Ev : CommonPoolResourceEvidence C) :
    CommonPoolResourceClosed C := by
  exact And.intro Ev.resourceTypeClosed (And.intro Ev.userGroupClosed (And.intro Ev.appropriationRuleClosed (And.intro Ev.monitoringEnforcementClosed Ev.sustainabilityOutcomeClosed)))

end EconomicsEcologicalEconomicsCanonicalLaneLean
end HautevilleHouse