import canonicalLaneMathlib.AdmissibleClass
import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.MathlibObjects
import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.ExtinctionCriteria
import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.GaltonWatsonCertificate

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure GaltonWatsonProofCertificate (P : GaltonWatsonProcess) (A : AdmissibleClass) where
  analyticCertificate : GaltonWatsonAnalyticCertificate P
  bridgeClosedFromProof : bridgeClosed A
  gateClosedFromProof : gateClosed A

theorem galton_watson_proof_yields_constrained_closure
    (P : GaltonWatsonProcess) (A : AdmissibleClass) (C : GaltonWatsonProofCertificate P A) :
    ConstrainedGaltonWatsonClosure A := by
  exact And.intro C.bridgeClosedFromProof C.gateClosedFromProof

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse