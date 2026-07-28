import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

structure EmissionsModelingPackage {P : PowertrainControlPackage (V : VehicleDynamicsPackage)} where
  engineModel : Type u
  exhaustTreatment : Type v
  pollutantFormation : Prop
  driveCycleCoverage : Prop
  thermalManagement : Prop

structure EmissionsModelingEvidence
    {P : PowertrainControlPackage V} (E : EmissionsModelingPackage P) where
  pollutantFormationClosed : E.pollutantFormation
  driveCycleCoverageClosed : E.driveCycleCoverage
  thermalManagementClosed : E.thermalManagement

def EmissionsModelingClosed
    {P : PowertrainControlPackage V} (E : EmissionsModelingPackage P) : Prop :=
  E.pollutantFormation ∧ E.driveCycleCoverage ∧ E.thermalManagement

theorem emissions_modeling_closed_from_evidence
    {P : PowertrainControlPackage V} (E : EmissionsModelingPackage P)
    (E_evidence : EmissionsModelingEvidence E) : EmissionsModelingClosed E :=
  And.intro E_evidence.pollutantFormationClosed
    (And.intro E_evidence.driveCycleCoverageClosed E_evidence.thermalManagementClosed)

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse
