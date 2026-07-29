import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure BranchingProcessAdmittedObject where
  process : GaltonWatsonProcessPackage
  extinction : ExtinctionProbabilityPackage
  mean : MeanOffspringPackage
  kestenStigum : KestenStigumPackage
  conclusion : Prop

structure BranchingProcessAdmissibleClass where
  object : BranchingProcessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def branchClosed (A : BranchingProcessAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_branching_admissible (A : BranchingProcessAdmissibleClass) : branchClosed A := by
  exact A.object.conclusion

def gateClosed (A : BranchingProcessAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_branching_admissible (A : BranchingProcessAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
