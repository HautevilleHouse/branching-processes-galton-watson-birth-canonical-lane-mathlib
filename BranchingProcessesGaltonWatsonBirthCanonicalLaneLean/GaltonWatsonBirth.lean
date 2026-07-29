import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure GaltonWatsonBirthPackage where
  childrenDistribution : Type u
  expectedOffspring : ℝ
  extinctionProbability : ℝ
  generatingFunction : childrenDistribution → ℝ → ℝ
  meanFinite : Prop
  extinctionProbabilityEquation : Prop

structure GaltonWatsonBirthEvidence (P : GaltonWatsonBirthPackage) where
  meanFiniteClosed : P.meanFinite
  extinctionProbabilityEquationClosed : P.extinctionProbabilityEquation

def GaltonWatsonBirthClosed (P : GaltonWatsonBirthPackage) : Prop :=
  P.meanFinite ∧ P.extinctionProbabilityEquation

theorem galton_watson_birth_closed_from_evidence (P : GaltonWatsonBirthPackage)
    (E : GaltonWatsonBirthEvidence P) : GaltonWatsonBirthClosed P := by
  exact And.intro E.meanFiniteClosed E.extinctionProbabilityEquationClosed

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse