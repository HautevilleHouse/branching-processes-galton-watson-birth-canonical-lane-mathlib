import canonicalLaneMathlib.AdmissibleClass
import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure ExtinctionCriteriaPackage (P : GaltonWatsonProcess) where
  meanOffspringComputed : ℝ
  generatingFunctionDefined : ℕ → ℝ
  extinctionProbabilityExists : ℝ
  meanLessThanOrEqualOneImpliesExtinction : (meanOffspringComputed ≤ 1) → (extinctionProbabilityExists = 1)
  meanGreaterThanOneImpliesPositiveExtinction : (meanOffspringComputed > 1) → (extinctionProbabilityExists < 1)

structure ExtinctionCriteriaEvidence {P : GaltonWatsonProcess} (C : ExtinctionCriteriaPackage P) where
  meanLessThanOrEqualOneClosed : C.meanLessThanOrEqualOneImpliesExtinction
  meanGreaterThanOneClosed : C.meanGreaterThanOneImpliesPositiveExtinction

def ExtinctionCriteriaClosed {P : GaltonWatsonProcess} (C : ExtinctionCriteriaPackage P) : Prop :=
  C.meanLessThanOrEqualOneImpliesExtinction ∧ C.meanGreaterThanOneImpliesPositiveExtinction

theorem extinction_criteria_closed_from_evidence
    {P : GaltonWatsonProcess} (C : ExtinctionCriteriaPackage P)
    (E : ExtinctionCriteriaEvidence C) : ExtinctionCriteriaClosed C := by
  exact And.intro E.meanLessThanOrEqualOneClosed E.meanGreaterThanOneClosed

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse