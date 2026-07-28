import AutomotiveEngineeringCanonicalLaneLean.VehicleDynamics

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure EngineControlPackage {V : VehicleDynamicsPackage} where
  throttleMap : Prop
  fuelInjectionTiming : Prop
  ignitionTiming : Prop
  emissionControl : Prop

structure EngineControlEvidence {V : VehicleDynamicsPackage} (E : EngineControlPackage V) where
  throttleMapClosed : E.throttleMap
  fuelInjectionTimingClosed : E.fuelInjectionTiming
  ignitionTimingClosed : E.ignitionTiming
  emissionControlClosed : E.emissionControl

def EngineControlClosed {V : VehicleDynamicsPackage} (E : EngineControlPackage V) : Prop :=
  E.throttleMap ∧ E.fuelInjectionTiming ∧ E.ignitionTiming ∧ E.emissionControl

theorem engine_control_closed_from_evidence {V : VehicleDynamicsPackage} (E : EngineControlPackage V) (Ev : EngineControlEvidence E) :
    EngineControlClosed E := by
  exact And.intro Ev.throttleMapClosed
    (And.intro Ev.fuelInjectionTimingClosed
      (And.intro Ev.ignitionTimingClosed Ev.emissionControlClosed))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse