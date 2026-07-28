import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure VehicleDynamicsPackage where
  vehicleType : Type u
  dynamicsModel : Type v
  longitudinalDynamics : Prop
  lateralDynamics : Prop
  verticalDynamics : Prop
  tireModel : Prop
  suspensionModel : Prop

structure VehicleDynamicsEvidence (D : VehicleDynamicsPackage) where
  longitudinalDynamicsClosed : D.longitudinalDynamics
  lateralDynamicsClosed : D.lateralDynamics
  verticalDynamicsClosed : D.verticalDynamics
  tireModelClosed : D.tireModel
  suspensionModelClosed : D.suspensionModel

def VehicleDynamicsClosed (D : VehicleDynamicsPackage) : Prop :=
  D.longitudinalDynamics ∧ D.lateralDynamics ∧ D.verticalDynamics ∧ D.tireModel ∧ D.suspensionModel

theorem vehicle_dynamics_closed_from_evidence (D : VehicleDynamicsPackage) (E : VehicleDynamicsEvidence D) : VehicleDynamicsClosed D := by
  exact And.intro E.longitudinalDynamicsClosed
    (And.intro E.lateralDynamicsClosed
      (And.intro E.verticalDynamicsClosed
        (And.intro E.tireModelClosed E.suspensionModelClosed)))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
