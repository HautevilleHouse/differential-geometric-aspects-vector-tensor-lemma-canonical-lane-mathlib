import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure ConnectionHolonomyPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  connection : VectorBundle.Connection M
  holonomyGroup : Type v
  parallelTransport : M -> M -> VectorBundle.TangentSpace M -> VectorBundle.TangentSpace M
  connectionCurvatureRelation : Prop
  holonomyTheoremValid : Prop

structure ConnectionHolonomyEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (H : ConnectionHolonomyPackage M) where
  connectionCurvatureRelationClosed : H.connectionCurvatureRelation
  holonomyTheoremValidClosed : H.holonomyTheoremValid

def ConnectionHolonomyClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (H : ConnectionHolonomyPackage M) : Prop :=
  H.connectionCurvatureRelation ∧ H.holonomyTheoremValid

theorem connection_holonomy_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (H : ConnectionHolonomyPackage M) (E : ConnectionHolonomyEvidence H) :
    ConnectionHolonomyClosed H := by
  exact And.intro E.connectionCurvatureRelationClosed E.holonomyTheoremValidClosed

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse