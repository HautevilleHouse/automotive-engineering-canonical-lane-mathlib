import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure SafetyConstraintsPackage {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} {C : ControlSystemPackage E} where
  collisionAvoidance : Prop
  laneKeeping : Prop
  speedLimit : Prop
  brakePerformance : Prop
  sensorRedundancy : Prop

structure SafetyConstraintsEvidence {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} {C : ControlSystemPackage E} (S : SafetyConstraintsPackage C) where
  collisionAvoidanceClosed : S.collisionAvoidance
  laneKeepingClosed : S.laneKeeping
  speedLimitClosed : S.speedLimit
  brakePerformanceClosed : S.brakePerformance
  sensorRedundancyClosed : S.sensorRedundancy

def SafetyConstraintsClosed {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} {C : ControlSystemPackage E} (S : SafetyConstraintsPackage C) : Prop :=
  S.collisionAvoidance ∧ S.laneKeeping ∧ S.speedLimit ∧ S.brakePerformance ∧ S.sensorRedundancy

theorem safety_constraints_closed_from_evidence {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} {C : ControlSystemPackage E} (S : SafetyConstraintsPackage C) (Ev : SafetyConstraintsEvidence S) : SafetyConstraintsClosed S := by
  exact And.intro Ev.collisionAvoidanceClosed
    (And.intro Ev.laneKeepingClosed
      (And.intro Ev.speedLimitClosed
        (And.intro Ev.brakePerformanceClosed Ev.sensorRedundancyClosed)))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
