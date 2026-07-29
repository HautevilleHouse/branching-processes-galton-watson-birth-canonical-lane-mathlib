import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.AdmissibleClass

/-!
# Probability Generating Functions Package
-/

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure ProbabilityGeneratingFunctionPackage where
  offspringDistribution : ℕ → ℝ
  generatingFunction : ℝ → ℝ
  convergenceRadius : ℝ
  firstDerivativeAtOne : ℝ
  secondDerivativeAtOne : ℝ

type structure ProbabilityGeneratingFunctionEvidence (G : ProbabilityGeneratingFunctionPackage) where
  offspringDistributionClosed : ∀ n, G.offspringDistribution n ≥ 0 ∧ ∑' n, G.offspringDistribution n = 1
  generatingFunctionClosed : ∀ s : ℝ, |s| < G.convergenceRadius → G.generatingFunction s = ∑' n, G.offspringDistribution n * s ^ n
  convergenceRadiusClosed : G.convergenceRadius ≥ 1
  firstDerivativeAtOneClosed : G.firstDerivativeAtOne = ∑' n, n * G.offspringDistribution n
  secondDerivativeAtOneClosed : G.secondDerivativeAtOne = ∑' n, n*(n-1) * G.offspringDistribution n

def ProbabilityGeneratingFunctionClosed (G : ProbabilityGeneratingFunctionPackage) : Prop :=
  (∀ n, G.offspringDistribution n ≥ 0 ∧ ∑' n, G.offspringDistribution n = 1) ∧
  (∀ s : ℝ, |s| < G.convergenceRadius → G.generatingFunction s = ∑' n, G.offspringDistribution n * s ^ n) ∧
  G.convergenceRadius ≥ 1 ∧
  G.firstDerivativeAtOne = ∑' n, n * G.offspringDistribution n ∧
  G.secondDerivativeAtOne = ∑' n, n*(n-1) * G.offspringDistribution n

theorem probability_generating_function_closed_from_evidence
    (G : ProbabilityGeneratingFunctionPackage) (E : ProbabilityGeneratingFunctionEvidence G) :
    ProbabilityGeneratingFunctionClosed G := by
  exact And.intro E.offspringDistributionClosed
    (And.intro E.generatingFunctionClosed
      (And.intro E.convergenceRadiusClosed
        (And.intro E.firstDerivativeAtOneClosed E.secondDerivativeAtOneClosed)))

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
