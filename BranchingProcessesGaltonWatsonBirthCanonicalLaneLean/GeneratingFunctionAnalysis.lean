import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure GeneratingFunctionAnalysisPackage {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} {C : CriticalThresholdPackage P E} where
  generatingFunctionAnalytic : Prop
  iteratesConverge : Prop
  extinctionProbabilityFromIterates : Prop

structure GeneratingFunctionAnalysisEvidence {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} {C : CriticalThresholdPackage P E}
    (G : GeneratingFunctionAnalysisPackage P E C) where
  generatingFunctionAnalyticClosed : G.generatingFunctionAnalytic
  iteratesConvergeClosed : G.iteratesConverge
  extinctionProbabilityFromIteratesClosed : G.extinctionProbabilityFromIterates

def GeneratingFunctionAnalysisClosed {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} {C : CriticalThresholdPackage P E}
    (G : GeneratingFunctionAnalysisPackage P E C) : Prop :=
  G.generatingFunctionAnalytic ∧ G.iteratesConverge ∧ G.extinctionProbabilityFromIterates

theorem generating_function_analysis_closed_from_evidence {P : GaltonWatsonBirthPackage}
    {E : ExtinctionProbabilityPackage P} {C : CriticalThresholdPackage P E}
    (G : GeneratingFunctionAnalysisPackage P E C) (Ev : GeneratingFunctionAnalysisEvidence G) :
    GeneratingFunctionAnalysisClosed G := by
  exact And.intro Ev.generatingFunctionAnalyticClosed
    (And.intro Ev.iteratesConvergeClosed Ev.extinctionProbabilityFromIteratesClosed)

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse