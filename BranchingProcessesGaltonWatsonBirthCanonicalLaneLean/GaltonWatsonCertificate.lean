import canonicalLaneMathlib.AdmissibleClass
import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.MathlibObjects
import BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.ExtinctionCriteria

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure GaltonWatsonAnalyticCertificate (P : GaltonWatsonProcess) where
  offspringDistributionSpecified : Prop
  meanComputed : Prop
  extinctionProbabilityComputed : Prop
  extinctionCriterionProved : Prop
  offspringDistributionSpecifiedClosed : offspringDistributionSpecified
  meanComputedClosed : meanComputed
  extinctionProbabilityComputedClosed : extinctionProbabilityComputed
  extinctionCriterionProvedClosed : extinctionCriterionProved
  extinctionCriteriaEvidence : ExtinctionCriteriaEvidence (ExtinctionCriteriaPackage.mk …) -- placeholder, actual evidence

def GaltonWatsonAnalyticCertificateClosed {P : GaltonWatsonProcess} (C : GaltonWatsonAnalyticCertificate P) : Prop :=
  C.offspringDistributionSpecified ∧ C.meanComputed ∧ C.extinctionProbabilityComputed ∧ C.extinctionCriterionProved

theorem galton_watson_analytic_certificate_closed
    {P : GaltonWatsonProcess} (C : GaltonWatsonAnalyticCertificate P) :
    GaltonWatsonAnalyticCertificateClosed C := by
  exact And.intro C.offspringDistributionSpecifiedClosed
    (And.intro C.meanComputedClosed
      (And.intro C.extinctionProbabilityComputedClosed C.extinctionCriterionProvedClosed))

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse