import AutomotiveEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure PowertrainPackage where
  engineDisplacement : Float
  maxTorque : Float
  maxPower : Float
  transmissionRatios : List Float

def PowertrainClosed (P : PowertrainPackage) : Prop :=
  P.engineDisplacement > 0 ∧ P.maxTorque > 0 ∧ P.maxPower > 0 ∧
  (∀ r ∈ P.transmissionRatios, r > 0)

theorem powertrain_closed (P : PowertrainPackage) : PowertrainClosed P := by
  exact And.intro (by trivial) (And.intro (by trivial) (And.intro (by trivial) (by
    intro r hr
    exact by trivial)))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse