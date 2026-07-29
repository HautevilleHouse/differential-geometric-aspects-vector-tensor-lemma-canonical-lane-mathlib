import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure VectorBundleTensorPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  vectorBundle : VectorBundle M
  tensorProduct : VectorBundle.Metric M -> VectorBundle.Metric M -> Type v
  sectionSpace : Type w
  covariantDerivative : sectionSpace -> VectorBundle.TangentSpace M -> sectionSpace
  tensorLaws : Prop
  leviCivitaCompatible : Prop

structure VectorBundleTensorEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (V : VectorBundleTensorPackage M) where
  tensorLawsClosed : V.tensorLaws
  leviCivitaCompatibleClosed : V.leviCivitaCompatible

def VectorBundleTensorClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (V : VectorBundleTensorPackage M) : Prop :=
  V.tensorLaws ∧ V.leviCivitaCompatible

theorem vector_bundle_tensor_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (V : VectorBundleTensorPackage M) (E : VectorBundleTensorEvidence V) :
    VectorBundleTensorClosed V := by
  exact And.intro E.tensorLawsClosed E.leviCivitaCompatibleClosed

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse