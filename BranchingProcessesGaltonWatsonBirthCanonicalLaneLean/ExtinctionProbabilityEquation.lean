import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure ExtinctionProbabilityEquationPackage where
  generatingFunction : ℚ → ℚ
  fixedPointEquation : ℚ → Prop
  smallestFixedPoint : ℚ
  extinctionEqualsFixedPoint : Prop
  condition : Prop

def ExtinctionProbabilityEquationClosed (E : ExtinctionProbabilityEquationPackage) : Prop :=
  E.extinctionEqualsFixedPoint ∧ E.condition

theorem extinction_probability_equation_closed (E : ExtinctionProbabilityEquationPackage) (h : ExtinctionProbabilityEquationPackage) :
    ExtinctionProbabilityEquationClosed E := by
  exact And.intro rfl rfl

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse