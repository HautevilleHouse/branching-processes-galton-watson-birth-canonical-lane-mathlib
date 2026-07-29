import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure CriticalCasePackage {G : GaltonWatsonProcess}
    {E : ExtinctionProbabilityPackage G} where
  meanOne : G.offspringDist.mean = 1.0
  extinctionProbOne : G.extinctionProb = 1.0
  varianceFinite : G.offspringDist.variance < Float.inf
  criticalExponent : Prop

structure CriticalCaseEvidence {G : GaltonWatsonProcess}
    {E : ExtinctionProbabilityPackage G}
    (C : CriticalCasePackage G E) where
  meanOneClosed : C.meanOne
  extinctionProbOneClosed : C.extinctionProbOne
  varianceFiniteClosed : C.varianceFinite
  criticalExponentClosed : C.criticalExponent

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
