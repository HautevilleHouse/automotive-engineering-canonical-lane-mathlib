import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure ActiveSafetyPackage {V : VehicleDynamicsPackage}
    {P : PowertrainControlPackage V} where
  sensorSystem : Type u
  decisionAlgorithm : Type v
  collisionAvoidance : Prop
  laneKeeping : Prop
  emergencyBraking : Prop

structure ActiveSafetyEvidence {V : VehicleDynamicsPackage}
    {P : PowertrainControlPackage V} (S : ActiveSafetyPackage V P) where
  collisionAvoidanceClosed : S.collisionAvoidance
  laneKeepingClosed : S.laneKeeping
  emergencyBrakingClosed : S.emergencyBraking

def ActiveSafetyClosed {V : VehicleDynamicsPackage}
    {P : PowertrainControlPackage V} (S : ActiveSafetyPackage V P) : Prop :=
  S.collisionAvoidance ∧ S.laneKeeping ∧ S.emergencyBraking

theorem active_safety_closed_from_evidence
    {V : VehicleDynamicsPackage} {P : PowertrainControlPackage V}
    (S : ActiveSafetyPackage V P) (E : ActiveSafetyEvidence S) :
    ActiveSafetyClosed S :=
  And.intro E.collisionAvoidanceClosed
    (And.intro E.laneKeepingClosed E.emergencyBrakingClosed)

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
