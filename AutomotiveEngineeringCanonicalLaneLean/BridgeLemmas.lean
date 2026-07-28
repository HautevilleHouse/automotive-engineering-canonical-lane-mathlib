import AutomotiveEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomotiveEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutomotiveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomotiveEngineeringCanonicalLaneLean
end HautevilleHouse