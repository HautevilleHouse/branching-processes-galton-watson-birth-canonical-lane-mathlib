import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthCanonicalLaneLean

structure TotalProgenyDistribution {G : GaltonWatsonProcess} where
  totalSize : Nat
  probability : Float

structure TotalProgenyPackage {G : GaltonWatsonProcess} where
  distribution : List (TotalProgenyDistribution G)
  meanTotalProgeny : Float
  varianceTotalProgeny : Float
  extinctionImpliesFinite : Prop

structure TotalProgenyEvidence {G : GaltonWatsonProcess}
    (T : TotalProgenyPackage G) where
  meanTotalProgenyClosed : T.meanTotalProgeny = 1.0 / (1.0 - G.offspringDist.mean)
  extinctionImpliesFiniteClosed : T.extinctionImpliesFinite

end BranchingProcessesGaltonWatsonBirthCanonicalLaneLean
end HautevilleHouse
