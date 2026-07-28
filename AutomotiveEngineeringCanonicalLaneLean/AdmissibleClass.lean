import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure AutomotiveAdmittedObject where
  vehicleModel : Type
  performanceMetric : Prop
  safetyMargin : Prop
  stabilityCondition : Prop
  conclusion : stabilityCondition

structure AdmissibleClass where
  object : AutomotiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AutomotiveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse