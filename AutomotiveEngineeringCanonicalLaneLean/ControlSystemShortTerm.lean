import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure ControlSystemPackage {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} where
  controllerType : Type u
  feedbackLaw : Prop
  stabilityMargin : Prop
  transientResponse : Prop
  robustnessCondition : Prop

structure ControlSystemEvidence {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} (C : ControlSystemPackage E) where
  feedbackLawClosed : C.feedbackLaw
  stabilityMarginClosed : C.stabilityMargin
  transientResponseClosed : C.transientResponse
  robustnessConditionClosed : C.robustnessCondition

def ControlSystemClosed {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} (C : ControlSystemPackage E) : Prop :=
  C.feedbackLaw ∧ C.stabilityMargin ∧ C.transientResponse ∧ C.robustnessCondition

theorem control_system_closed_from_evidence {D : VehicleDynamicsPackage} {E : VehicleStateEvolutionPackage D} (C : ControlSystemPackage E) (Ev : ControlSystemEvidence C) : ControlSystemClosed C := by
  exact And.intro Ev.feedbackLawClosed
    (And.intro Ev.stabilityMarginClosed
      (And.intro Ev.transientResponseClosed Ev.robustnessConditionClosed))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
