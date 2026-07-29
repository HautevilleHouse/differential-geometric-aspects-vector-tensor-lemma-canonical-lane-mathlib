import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure HolonomyTheoryPackage where
  holonomyGroup : Type u
  restrictedHolonomy : Type v
  holonomyBundle : Type w
  holonomyLieAlgebra : Type x
  deRhamDecomposition : Prop
  bersteinGelfandGelfand : Prop
  simonsHolonomyTheorem : Prop

structure HolonomyTheoryEvidence (H : HolonomyTheoryPackage) where
  deRhamDecompositionClosed : H.deRhamDecomposition
  bersteinGelfandGelfandClosed : H.bersteinGelfandGelfand
  simonsHolonomyTheoremClosed : H.simonsHolonomyTheorem

def HolonomyTheoryClosed (H : HolonomyTheoryPackage) : Prop :=
  H.deRhamDecomposition ∧ H.bersteinGelfandGelfand ∧ H.simonsHolonomyTheorem

theorem holonomy_theory_closed_from_evidence
    (H : HolonomyTheoryPackage) (E : HolonomyTheoryEvidence H) :
    HolonomyTheoryClosed H := by
  exact And.intro E.deRhamDecompositionClosed
    (And.intro E.bersteinGelfandGelfandClosed E.simonsHolonomyTheoremClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse