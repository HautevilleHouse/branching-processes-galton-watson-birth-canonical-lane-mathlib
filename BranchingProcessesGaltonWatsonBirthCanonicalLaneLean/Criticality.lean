import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.ExtinctionProbability

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure CriticalityClassification {G : GaltonWatsonProcess} {F : GeneratingFunctionPackage G}
    (E : ExtinctionProbabilityPackage F) where
  meanOffspringValue : ℝ
  extinctionCertain : Prop
  extinctionUncertain : Prop
  subcriticalCase : Prop
  criticalCase : Prop
  supercriticalCase : Prop
  classificationConsistent : Prop

structure CriticalityEvidence {G : GaltonWatsonProcess} {F : GeneratingFunctionPackage G}
    {E : ExtinctionProbabilityPackage F} (C : CriticalityClassification E) where
  classificationConsistentClosed : C.classificationConsistent

def CriticalityClosed {G : GaltonWatsonProcess} {F : GeneratingFunctionPackage G}
    {E : ExtinctionProbabilityPackage F} (C : CriticalityClassification E) : Prop :=
  C.classificationConsistent

theorem criticality_closed_from_evidence {G : GaltonWatsonProcess} {F : GeneratingFunctionPackage G}
    {E : ExtinctionProbabilityPackage F} (C : CriticalityClassification E)
    (Ev : CriticalityEvidence C) : CriticalityClosed C := by
  exact Ev.classificationConsistentClosed

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
