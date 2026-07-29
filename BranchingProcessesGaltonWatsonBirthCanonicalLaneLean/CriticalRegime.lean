import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthCanonicalLaneLean.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure CriticalRegimePackage (O : GaltonWatsonAdmittedObject) where
  meanOffspring : ℕ
  criticalThreshold : ℕ := 1
  regimeClassification : O.extinctionProbability = 1 → meanOffspring ≤ criticalThreshold
  subcriticalCase : meanOffspring < criticalThreshold → O.extinctionProbability = 1
  supercriticalCase : meanOffspring > criticalThreshold → O.extinctionProbability < 1
  criticalCase : meanOffspring = criticalThreshold → O.extinctionProbability = 1

structure CriticalRegimeEvidence (O : GaltonWatsonAdmittedObject) (C : CriticalRegimePackage O) where
  regimeClassificationClosed : C.regimeClassification
  subcriticalCaseClosed : C.subcriticalCase
  supercriticalCaseClosed : C.supercriticalCase
  criticalCaseClosed : C.criticalCase

def CriticalRegimeClosed (O : GaltonWatsonAdmittedObject) (C : CriticalRegimePackage O) : Prop :=
  (C.regimeClassification) ∧ (C.subcriticalCase) ∧ (C.supercriticalCase) ∧ (C.criticalCase)

theorem critical_regime_closed_from_evidence (O : GaltonWatsonAdmittedObject) (C : CriticalRegimePackage O)
    (E : CriticalRegimeEvidence O C) : CriticalRegimeClosed O C := by
  exact And.intro E.regimeClassificationClosed
    (And.intro E.subcriticalCaseClosed
      (And.intro E.supercriticalCaseClosed E.criticalCaseClosed))

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
