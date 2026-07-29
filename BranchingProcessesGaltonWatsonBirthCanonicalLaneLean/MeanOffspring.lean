import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure MeanOffspring where
  distribution : List ℕ
  mean : ℝ

structure MeanOffspringEvidence (M : MeanOffspring) where
  meanFormula : M.mean = (List.sum (List.map (λ x => (x : ℝ)) M.distribution)) / (List.length M.distribution : ℝ)

structure MeanOffspringPackage where
  meanObj : MeanOffspring
  evidence : MeanOffspringEvidence meanObj

def MeanOffspringClosed (P : MeanOffspringPackage) : Prop :=
  P.meanObj.mean = (List.sum (List.map (λ x => (x : ℝ)) P.meanObj.distribution)) / (List.length P.meanObj.distribution : ℝ)

theorem mean_offspring_closed (P : MeanOffspringPackage) : MeanOffspringClosed P := by
  exact P.evidence.meanFormula

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
