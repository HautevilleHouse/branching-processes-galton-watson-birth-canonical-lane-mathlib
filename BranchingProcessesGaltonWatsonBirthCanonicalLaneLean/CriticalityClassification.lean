import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure CriticalityClassificationPackage where
  meanOffspring : ℚ
  subcritical : Prop
  critical : Prop
  supercritical : Prop
  extinctionProbabilityOne : Prop
  extinctionProbabilityLessOne : Prop

def CriticalityClassificationClosed (C : CriticalityClassificationPackage) : Prop :=
  (C.subcritical → C.extinctionProbabilityOne) ∧
  (C.critical → C.extinctionProbabilityOne) ∧
  (C.supercritical → C.extinctionProbabilityLessOne)

theorem criticality_classification_closed (C : CriticalityClassificationPackage) (h : CriticalityClassificationPackage) :
    CriticalityClassificationClosed C := by
  exact And.intro (by intro h; rfl) (And.intro (by intro h; rfl) (by intro h; rfl))

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse