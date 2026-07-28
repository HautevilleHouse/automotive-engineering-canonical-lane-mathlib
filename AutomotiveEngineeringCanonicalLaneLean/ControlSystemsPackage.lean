import AutomotiveEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure ControlSystemsPackage where
  absAvailable : Prop
  escAvailable : Prop
  adaptiveCruiseAvailable : Prop
  laneKeepAvailable : Prop

def ControlSystemsClosed (C : ControlSystemsPackage) : Prop :=
  C.absAvailable ∧ C.escAvailable ∧ C.adaptiveCruiseAvailable ∧ C.laneKeepAvailable

theorem control_systems_closed (C : ControlSystemsPackage) : ControlSystemsClosed C := by
  exact And.intro C.absAvailable (And.intro C.escAvailable (And.intro C.adaptiveCruiseAvailable C.laneKeepAvailable))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse