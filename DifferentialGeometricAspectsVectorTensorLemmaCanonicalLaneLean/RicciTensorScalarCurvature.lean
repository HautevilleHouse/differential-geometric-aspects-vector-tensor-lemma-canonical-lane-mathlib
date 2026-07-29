import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure RicciTensorScalarCurvaturePackage (M : Type*) [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvaturePackage M) where
  ricciTensor : Type
  scalarCurvature : Type
  ricciSymmetry : Prop
  contractedBianchiApplied : Prop
  scalarTraceOfRicci : Prop
  einsteinCondensation : Prop

structure RicciTensorScalarCurvatureEvidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] {C : ConnectionCurvaturePackage M} (R : RicciTensorScalarCurvaturePackage M C) where
  ricciSymmetryClosed : R.ricciSymmetry
  contractedBianchiAppliedClosed : R.contractedBianchiApplied
  scalarTraceOfRicciClosed : R.scalarTraceOfRicci
  einsteinCondensationClosed : R.einsteinCondensation

def RicciTensorScalarCurvatureClosed (M : Type*) [TopologicalSpace M] [SmoothManifold M] {C : ConnectionCurvaturePackage M} (R : RicciTensorScalarCurvaturePackage M C) : Prop :=
  R.ricciSymmetry ∧ R.contractedBianchiApplied ∧ R.scalarTraceOfRicci ∧ R.einsteinCondensation

theorem ricci_tensor_scalar_curvature_closed_from_evidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] {C : ConnectionCurvaturePackage M} (R : RicciTensorScalarCurvaturePackage M C) (E : RicciTensorScalarCurvatureEvidence M R) :
  RicciTensorScalarCurvatureClosed M R := by
  exact And.intro E.ricciSymmetryClosed (And.intro E.contractedBianchiAppliedClosed (And.intro E.scalarTraceOfRicciClosed E.einsteinCondensationClosed))

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse