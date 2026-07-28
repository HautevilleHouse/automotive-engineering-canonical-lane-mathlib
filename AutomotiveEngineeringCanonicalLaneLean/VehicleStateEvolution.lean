import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure VehicleStateEvolutionPackage (D : VehicleDynamicsPackage) where
  stateVector : Type u
  timeDomain : Type v
  initialCondition : Prop
  evolutionEquation : Prop
  controlInputs : Prop
  measurementModel : Prop

structure VehicleStateEvolutionEvidence {D : VehicleDynamicsPackage} (E : VehicleStateEvolutionPackage D) where
  initialConditionClosed : E.initialCondition
  evolutionEquationClosed : E.evolutionEquation
  controlInputsClosed : E.controlInputs
  measurementModelClosed : E.measurementModel

def VehicleStateEvolutionClosed {D : VehicleDynamicsPackage} (E : VehicleStateEvolutionPackage D) : Prop :=
  E.initialCondition ∧ E.evolutionEquation ∧ E.controlInputs ∧ E.measurementModel

theorem vehicle_state_evolution_closed_from_evidence {D : VehicleDynamicsPackage} (E : VehicleStateEvolutionPackage D) (Ev : VehicleStateEvolutionEvidence E) : VehicleStateEvolutionClosed E := by
  exact And.intro Ev.initialConditionClosed
    (And.intro Ev.evolutionEquationClosed
      (And.intro Ev.controlInputsClosed Ev.measurementModelClosed))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
