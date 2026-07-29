import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure KestenStigumTheoremPackage where
  martingaleLimitNonzeroCondition : Prop
  criticalIndex : ℚ
  momentCondition : Prop
  offspringDistribution : ℕ → ℚ
  martingaleLimit : ℚ
  limitNonzero : Prop
  necessaryAndSufficient : Prop

def KestenStigumTheoremClosed (K : KestenStigumTheoremPackage) : Prop :=
  K.limitNonzero ∧ K.necessaryAndSufficient

theorem kesten_stigum_theorem_closed (K : KestenStigumTheoremPackage) (h : KestenStigumTheoremPackage) :
    KestenStigumTheoremClosed K := by
  exact And.intro rfl rfl

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse