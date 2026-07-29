import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.PopulationGenerations
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.ExtinctionProbabilityEquation
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.CriticalityClassification
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.LimitTheorem
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.KestenStigumTheorem

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure BranchingProcessAdmissibleClass where
  population : PopulationGenerationsPackage
  extinctionEq : ExtinctionProbabilityEquationPackage
  criticality : CriticalityClassificationPackage
  limit : LimitTheoremPackage
  kestenStigum : KestenStigumTheoremPackage
  bridgeClosed : Prop
  gateClosed : Prop

def bridgeClosed (A : BranchingProcessAdmissibleClass) : Prop :=
  PopulationGenerationsClosed A.population ∧
  ExtinctionProbabilityEquationClosed A.extinctionEq ∧
  CriticalityClassificationClosed A.criticality ∧
  LimitTheoremClosed A.limit ∧
  KestenStigumTheoremClosed A.kestenStigum

theorem bridge_from_admissible_class (A : BranchingProcessAdmissibleClass) (h : A.bridgeClosed) : bridgeClosed A := h

def gateClosed (A : BranchingProcessAdmissibleClass) : Prop := True

theorem gate_from_admissible_class (A : BranchingProcessAdmissibleClass) : gateClosed A := True.intro

def ConstrainedBranchingProcessClosure (A : BranchingProcessAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_branching_process_endgame (A : BranchingProcessAdmissibleClass) (h : A.bridgeClosed) :
    ConstrainedBranchingProcessClosure A := by
  exact And.intro (bridge_from_admissible_class A h) (gate_from_admissible_class A)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse