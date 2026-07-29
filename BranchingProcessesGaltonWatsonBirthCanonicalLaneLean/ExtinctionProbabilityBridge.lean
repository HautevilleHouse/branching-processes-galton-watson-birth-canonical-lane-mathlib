import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure ExtinctionProbabilityPackage {P : GaltonWatsonBirthPackage} where
  fixedPointEquation : Prop
  extinctionAsSmallestNonnegative : Prop
  supercriticalCondition : Prop

structure ExtinctionProbabilityEvidence {P : GaltonWatsonBirthPackage}
    (E : ExtinctionProbabilityPackage P) where
  fixedPointEquationClosed : E.fixedPointEquation
  extinctionAsSmallestNonnegativeClosed : E.extinctionAsSmallestNonnegative
  supercriticalConditionClosed : E.supercriticalCondition

def ExtinctionProbabilityClosed {P : GaltonWatsonBirthPackage}
    (E : ExtinctionProbabilityPackage P) : Prop :=
  E.fixedPointEquation ∧ E.extinctionAsSmallestNonnegative ∧ E.supercriticalCondition

theorem extinction_probability_closed_from_evidence {P : GaltonWatsonBirthPackage}
    (E : ExtinctionProbabilityPackage P) (Ev : ExtinctionProbabilityEvidence E) :
    ExtinctionProbabilityClosed E := by
  exact And.intro Ev.fixedPointEquationClosed
    (And.intro Ev.extinctionAsSmallestNonnegativeClosed Ev.supercriticalConditionClosed)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse