import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure BranchingMartingalePackage (G : GaltonWatsonProcess) where
  meanOffspring : ℝ
  martingaleSequence : ℕ → ℝ
  martingaleProperty : ∀ n : ℕ, martingaleSequence n = (martingaleSequence 0) * (meanOffspring) ^ n
  expectationCondition : ∀ n : ℕ, 𝔼[martingaleSequence (n+1) | ℱ_n] = martingaleSequence n

structure BranchingMartingaleEvidence (G : GaltonWatsonProcess) (M : BranchingMartingalePackage G) where
  martingalePropertyClosed : M.martingaleProperty
  expectationConditionClosed : M.expectationCondition

def BranchingMartingaleClosed (G : GaltonWatsonProcess) (M : BranchingMartingalePackage G) : Prop :=
  M.martingaleProperty ∧ M.expectationCondition

theorem branching_martingale_closed_from_evidence (G : GaltonWatsonProcess) (M : BranchingMartingalePackage G) (E : BranchingMartingaleEvidence G M) : BranchingMartingaleClosed G M := by
  exact And.intro E.martingalePropertyClosed E.expectationConditionClosed

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse