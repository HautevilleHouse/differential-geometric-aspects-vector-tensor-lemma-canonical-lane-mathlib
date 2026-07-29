import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure IndexTheoremBridgePackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  ellipticOperator : VectorBundle.DifferentialOperator M
  index : ℤ
  topologicalInvariant : Prop
  analyticIndexEqualsTopologicalIndex : Prop
  indexComputed : Prop

structure IndexTheoremBridgeEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (I : IndexTheoremBridgePackage M) where
  analyticIndexEqualsTopologicalIndexClosed : I.analyticIndexEqualsTopologicalIndex
  indexComputedClosed : I.indexComputed

def IndexTheoremBridgeClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (I : IndexTheoremBridgePackage M) : Prop :=
  I.analyticIndexEqualsTopologicalIndex ∧ I.indexComputed

theorem index_theorem_bridge_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (I : IndexTheoremBridgePackage M) (E : IndexTheoremBridgeEvidence I) :
    IndexTheoremBridgeClosed I := by
  exact And.intro E.analyticIndexEqualsTopologicalIndexClosed E.indexComputedClosed

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse