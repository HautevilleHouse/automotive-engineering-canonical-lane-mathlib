import AutomotiveEngineeringCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse