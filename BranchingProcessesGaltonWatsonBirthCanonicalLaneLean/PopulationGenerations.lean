import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure PopulationGenerationsPackage where
  initialGenerationSize : ℕ
  generationIndex : ℕ → Prop
  offspringDistribution : ℕ → ℚ
  expectationFinite : ℚ
  extinctionProbability : ℚ

def PopulationGenerationsClosed (P : PopulationGenerationsPackage) : Prop :=
  P.initialGenerationSize = 1 ∧ P.extinctionProbability = 0

theorem population_generations_closed (P : PopulationGenerationsPackage) (h : PopulationGenerationsPackage) :
    PopulationGenerationsClosed P := by
  exact And.intro rfl rfl

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse