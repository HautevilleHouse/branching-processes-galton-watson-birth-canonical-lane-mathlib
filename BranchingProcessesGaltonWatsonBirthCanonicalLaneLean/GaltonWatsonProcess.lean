import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure PopulationState where
  generation : Nat
  size : Nat

structure OffspringDistribution where
  probabilities : List (Nat × Float)
  mean : Float
  variance : Float

structure GaltonWatsonProcess where
  initialState : PopulationState
  offspringDist : OffspringDistribution
  extinctionProb : Float
  generations : List PopulationState

structure BranchingProcessEvidence (P : GaltonWatsonProcess) where
  initialStateClosed : P.initialState.size = 1
  extinctionProbClosed : 0.0 ≤ P.extinctionProb ∧ P.extinctionProb ≤ 1.0

structure BranchingProcessPackage where
  process : GaltonWatsonProcess
  meanOffspring : Float
  extinctionThreshold : Float
  criticalCase : Prop

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
