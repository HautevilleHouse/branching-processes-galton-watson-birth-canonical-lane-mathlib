import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GaltonWatsonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
