import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure GeneratingFunctionPackage where
  probabilityGeneratingFunction : ℕ → ℕ → ℝ
  fixedPointEquation : (probabilityGeneratingFunction 0 0) = 1 → ℕ → ℕ → ℝ
  analyticContinuation : Prop
  rootClassification : Prop

structure GeneratingFunctionEvidence (G : GeneratingFunctionPackage) where
  fixedPointEquationClosed : G.fixedPointEquation (by
    exact G.probabilityGeneratingFunction 0 0 = 1) 1 0 = 1
  analyticContinuationClosed : G.analyticContinuation
  rootClassificationClosed : G.rootClassification

def GeneratingFunctionClosed (G : GeneratingFunctionPackage) : Prop :=
  G.fixedPointEquation (G.probabilityGeneratingFunction 0 0 = 1) 1 0 = 1 ∧
  G.analyticContinuation ∧ G.rootClassification

theorem generating_function_closed_from_evidence (G : GeneratingFunctionPackage)
    (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.fixedPointEquationClosed
    (And.intro E.analyticContinuationClosed E.rootClassificationClosed)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse