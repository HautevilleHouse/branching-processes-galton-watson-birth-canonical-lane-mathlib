import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure CriticalThresholdPackage {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} where
  meanCritical : Prop
  extinctionAlmostSureIfCritical : Prop
  extinctionProbabilityOne : Prop

structure CriticalThresholdEvidence {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} (C : CriticalThresholdPackage P E) where
  meanCriticalClosed : C.meanCritical
  extinctionAlmostSureIfCriticalClosed : C.extinctionAlmostSureIfCritical
  extinctionProbabilityOneClosed : C.extinctionProbabilityOne

def CriticalThresholdClosed {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} (C : CriticalThresholdPackage P E) : Prop :=
  C.meanCritical ∧ C.extinctionAlmostSureIfCritical ∧ C.extinctionProbabilityOne

theorem critical_threshold_closed_from_evidence {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} (C : CriticalThresholdPackage P E)
    (Ev : CriticalThresholdEvidence C) : CriticalThresholdClosed C := by
  exact And.intro Ev.meanCriticalClosed
    (And.intro Ev.extinctionAlmostSureIfCriticalClosed Ev.extinctionProbabilityOneClosed)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse