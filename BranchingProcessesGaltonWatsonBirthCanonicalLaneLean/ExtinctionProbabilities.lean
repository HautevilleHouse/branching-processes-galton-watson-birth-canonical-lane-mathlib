import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure ExtinctionProbabilityPackage where
  process : GaltonWatsonAdmittedObject
  probabilityEquation : ℕ → ℕ → ℝ
  fixedPointEquation : ℕ → ℝ
  extinctionProbability : ℝ
  extinctionProbabilityEquation : extinctionProbability = 0 ∨ extinctionProbability = 1

structure ExtinctionProbabilityEvidence (E : ExtinctionProbabilityPackage) where
  probabilityEquationClosed : E.probabilityEquation 0 0 = 1
  fixedPointEquationClosed : E.fixedPointEquation 0 = 1
  extinctionProbabilityEquationClosed : E.extinctionProbabilityEquation

def ExtinctionProbabilityClosed (E : ExtinctionProbabilityPackage) : Prop :=
  E.extinctionProbabilityEquation

theorem extinction_probability_closed_from_evidence (E : ExtinctionProbabilityPackage)
    (Ev : ExtinctionProbabilityEvidence E) : ExtinctionProbabilityClosed E := by
  exact Ev.extinctionProbabilityEquationClosed

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
