import AutomotiveEngineeringCanonicalLaneLean.EngineControl

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure BrakingSystemPackage {V : VehicleDynamicsPackage} {E : EngineControlPackage V} where
  hydraulicPressure : Prop
  brakePadFriction : Prop
  antiLockBraking : Prop
  electronicStabilityControl : Prop

structure BrakingSystemEvidence {V : VehicleDynamicsPackage} {E : EngineControlPackage V} (B : BrakingSystemPackage V E) where
  hydraulicPressureClosed : B.hydraulicPressure
  brakePadFrictionClosed : B.brakePadFriction
  antiLockBrakingClosed : B.antiLockBraking
  electronicStabilityControlClosed : B.electronicStabilityControl

def BrakingSystemClosed {V : VehicleDynamicsPackage} {E : EngineControlPackage V} (B : BrakingSystemPackage V E) : Prop :=
  B.hydraulicPressure ∧ B.brakePadFriction ∧ B.antiLockBraking ∧ B.electronicStabilityControl

theorem braking_system_closed_from_evidence {V : VehicleDynamicsPackage} {E : EngineControlPackage V} (B : BrakingSystemPackage V E) (Ev : BrakingSystemEvidence B) :
    BrakingSystemClosed B := by
  exact And.intro Ev.hydraulicPressureClosed
    (And.intro Ev.brakePadFrictionClosed
      (And.intro Ev.antiLockBrakingClosed Ev.electronicStabilityControlClosed))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse