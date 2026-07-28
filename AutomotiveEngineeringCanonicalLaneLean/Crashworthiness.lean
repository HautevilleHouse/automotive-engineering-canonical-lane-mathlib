import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure CrashworthinessPackage {V : VehicleDynamicsPackage} where
  occupantProtection : Prop
  structuralIntegrity : Prop
  energyAbsorption : Prop
  crashScenarioCoverage : Prop

structure CrashworthinessEvidence {V : VehicleDynamicsPackage}
    (C : CrashworthinessPackage V) where
  occupantProtectionClosed : C.occupantProtection
  structuralIntegrityClosed : C.structuralIntegrity
  energyAbsorptionClosed : C.energyAbsorption
  crashScenarioCoverageClosed : C.crashScenarioCoverage

def CrashworthinessClosed {V : VehicleDynamicsPackage}
    (C : CrashworthinessPackage V) : Prop :=
  C.occupantProtection ∧ C.structuralIntegrity ∧
  C.energyAbsorption ∧ C.crashScenarioCoverage

theorem crashworthiness_closed_from_evidence
    {V : VehicleDynamicsPackage} (C : CrashworthinessPackage V)
    (E : CrashworthinessEvidence C) : CrashworthinessClosed C :=
  And.intro E.occupantProtectionClosed
    (And.intro E.structuralIntegrityClosed
      (And.intro E.energyAbsorptionClosed E.crashScenarioCoverageClosed))

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
