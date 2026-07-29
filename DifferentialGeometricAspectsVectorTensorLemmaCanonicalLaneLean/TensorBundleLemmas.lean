import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure TensorBundlePackage (M : Type*) [TopologicalSpace M] [SmoothManifold M] (B : VectorBundlePackage M) where
  tensorProduct : Type
  bundleStructure : VectorBundlePackage M
  canonicalIsomorphisms : Prop
  contractionMaps : Prop
  lieDerivativeWellDefined : Prop

structure TensorBundleEvidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] {B : VectorBundlePackage M} (T : TensorBundlePackage M B) where
  canonicalIsomorphismsClosed : T.canonicalIsomorphisms
  contractionMapsClosed : T.contractionMaps
  lieDerivativeWellDefinedClosed : T.lieDerivativeWellDefined

def TensorBundleClosed (M : Type*) [TopologicalSpace M] [SmoothManifold M] {B : VectorBundlePackage M} (T : TensorBundlePackage M B) : Prop :=
  T.canonicalIsomorphisms ∧ T.contractionMaps ∧ T.lieDerivativeWellDefined

theorem tensor_bundle_closed_from_evidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] {B : VectorBundlePackage M} (T : TensorBundlePackage M B) (E : TensorBundleEvidence M T) :
  TensorBundleClosed M T := by
  exact And.intro E.canonicalIsomorphismsClosed (And.intro E.contractionMapsClosed E.lieDerivativeWellDefinedClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse