import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

def ConstrainedBranchingProcessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_branching_process_endgame (A : AdmissibleClass) :
    ConstrainedBranchingProcessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
