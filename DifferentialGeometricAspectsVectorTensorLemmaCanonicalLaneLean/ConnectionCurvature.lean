import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure ConnectionCurvaturePackage (M : Type*) [TopologicalSpace M] [SmoothManifold M] where
  connection : Type
  curvature : Type
  torsionFree : Prop
  compatibilityWithMetric : Prop
  bianchiIdentities : Prop
  curvatureSymmetries : Prop

structure ConnectionCurvatureEvidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvaturePackage M) where
  torsionFreeClosed : C.torsionFree
  compatibilityWithMetricClosed : C.compatibilityWithMetric
  bianchiIdentitiesClosed : C.bianchiIdentities
  curvatureSymmetriesClosed : C.curvatureSymmetries

def ConnectionCurvatureClosed (M : Type*) [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvaturePackage M) : Prop :=
  C.torsionFree ∧ C.compatibilityWithMetric ∧ C.bianchiIdentities ∧ C.curvatureSymmetries

theorem connection_curvature_closed_from_evidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvaturePackage M) (E : ConnectionCurvatureEvidence M C) :
  ConnectionCurvatureClosed M C := by
  exact And.intro E.torsionFreeClosed (And.intro E.compatibilityWithMetricClosed (And.intro E.bianchiIdentitiesClosed E.curvatureSymmetriesClosed))

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse