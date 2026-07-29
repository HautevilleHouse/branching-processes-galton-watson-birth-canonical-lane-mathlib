import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.Distributions

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure OffspringDistribution where
  support : Set ℕ
  probabilities : ℕ → ℝ
  sumToOne : ∑' n, probabilities n = 1
  nonnegative : ∀ n, probabilities n ≥ 0

structure GaltonWatsonProcess where
  offspringDist : OffspringDistribution
  initialPopulation : ℕ
  generationSizes : ℕ → ℕ
  dynamics : ∀ n, generationSizes (n+1) = sum over individuals of offspringDist

structure GaltonWatsonAdmittedObject where
  process : GaltonWatsonProcess
  meanOffspring : ℝ
  extinctionProbability : ℝ
  extinctionCondition : meanOffspring ≤ 1 → extinctionProbability = 1
  conclusion : extinctionCondition

def GaltonWatsonWitnessClosed (O : GaltonWatsonAdmittedObject) : Prop :=
  O.extinctionCondition

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse