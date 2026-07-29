import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure VectorBundlePackage (M : Type*) [TopologicalSpace M] [SmoothManifold M] where
  base : M
  fiber : Type*
  projection : fiber → M
  localTrivializations : Prop
  bundleTopology : TopologicalSpace fiber
  smoothTransition : Prop

structure VectorBundleEvidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] (B : VectorBundlePackage M) where
  localTrivializationsClosed : B.localTrivializations
  smoothTransitionClosed : B.smoothTransition

def VectorBundleClosed (M : Type*) [TopologicalSpace M] [SmoothManifold M] (B : VectorBundlePackage M) : Prop :=
  B.localTrivializations ∧ B.smoothTransition

theorem vector_bundle_closed_from_evidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] (B : VectorBundlePackage M) (E : VectorBundleEvidence M B) :
  VectorBundleClosed M B := by
  exact And.intro E.localTrivializationsClosed E.smoothTransitionClosed

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse