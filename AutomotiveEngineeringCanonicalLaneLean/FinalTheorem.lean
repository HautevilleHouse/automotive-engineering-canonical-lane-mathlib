import AutomotiveEngineeringCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

def ConstrainedAutomotiveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automotive_endgame (A : AdmissibleClass) :
    ConstrainedAutomotiveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse