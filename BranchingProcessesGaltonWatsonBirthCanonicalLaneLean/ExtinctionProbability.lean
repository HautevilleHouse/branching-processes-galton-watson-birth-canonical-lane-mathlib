import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure ExtinctionProbabilityPackage {G : GaltonWatsonProcess} where
  generatingFunction : Float → Float
  fixedPointEquation : generatingFunction(extinctionProb) = extinctionProb
  extinctionProbUnique : Prop
  meanOneCritical : Prop

structure ExtinctionProbabilityEvidence {G : GaltonWatsonProcess}
    (E : ExtinctionProbabilityPackage G) where
  fixedPointClosed : E.extinctionProbUnique
  meanOneCriticalClosed : E.meanOneCritical

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
