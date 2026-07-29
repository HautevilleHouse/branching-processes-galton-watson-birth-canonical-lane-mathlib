import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure OffspringDistributionPackage where
  distributionType : Type u
  mean : Prop
  variance : Prop
  generatingFunctionAtOne : Prop
  extinctionProbabilityEquation : Prop

structure OffspringDistributionEvidence (D : OffspringDistributionPackage) where
  meanClosed : D.mean
  varianceClosed : D.variance
  generatingFunctionAtOneClosed : D.generatingFunctionAtOne
  extinctionProbabilityEquationClosed : D.extinctionProbabilityEquation

def OffspringDistributionClosed (D : OffspringDistributionPackage) : Prop :=
  D.mean ∧ D.variance ∧ D.generatingFunctionAtOne ∧ D.extinctionProbabilityEquation

theorem offspring_distribution_closed_from_evidence
    (D : OffspringDistributionPackage) (E : OffspringDistributionEvidence D) :
    OffspringDistributionClosed D := by
  exact And.intro E.meanClosed
    (And.intro E.varianceClosed
      (And.intro E.generatingFunctionAtOneClosed E.extinctionProbabilityEquationClosed))

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse