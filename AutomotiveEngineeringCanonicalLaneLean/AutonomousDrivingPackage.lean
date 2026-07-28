import AutomotiveEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure AutonomousDrivingPackage where
  perceptionSystemValid : Prop
  planningSystemValid : Prop
  controlSystemValid : Prop
  safetyCaseProven : Prop

def AutonomousDrivingClosed (A : AutonomousDrivingPackage) : Prop :=
  A.perceptionSystemValid ∧ A.planningSystemValid ∧ A.controlSystemValid ∧ A.safetyCaseProven

theorem autonomous_driving_closed (A : AutonomousDrivingPackage) : AutonomousDrivingClosed A := by
  exact And.intro A.perceptionSystemValid (And.intro A.planningSystemValid (And.intro A.controlSystemValid A.safetyCaseProven))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse