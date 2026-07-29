import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure AdmissibleClass where
  object : GaltonWatsonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GaltonWatsonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
