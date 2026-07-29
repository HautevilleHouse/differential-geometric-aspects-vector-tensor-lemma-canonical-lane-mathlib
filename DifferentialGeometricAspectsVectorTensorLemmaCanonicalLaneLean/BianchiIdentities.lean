import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure BianchiIdentitiesPackage (M : Type*) [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvaturePackage M) where
  firstBianchi : Prop
  secondBianchi : Prop
  contractedBianchi : Prop
  compatibilityWithRicci : Prop

structure BianchiIdentitiesEvidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] {C : ConnectionCurvaturePackage M} (B : BianchiIdentitiesPackage M C) where
  firstBianchiClosed : B.firstBianchi
  secondBianchiClosed : B.secondBianchi
  contractedBianchiClosed : B.contractedBianchi
  compatibilityWithRicciClosed : B.compatibilityWithRicci

def BianchiIdentitiesClosed (M : Type*) [TopologicalSpace M] [SmoothManifold M] {C : ConnectionCurvaturePackage M} (B : BianchiIdentitiesPackage M C) : Prop :=
  B.firstBianchi ∧ B.secondBianchi ∧ B.contractedBianchi ∧ B.compatibilityWithRicci

theorem bianchi_identities_closed_from_evidence (M : Type*) [TopologicalSpace M] [SmoothManifold M] {C : ConnectionCurvaturePackage M} (B : BianchiIdentitiesPackage M C) (E : BianchiIdentitiesEvidence M B) :
  BianchiIdentitiesClosed M B := by
  exact And.intro E.firstBianchiClosed (And.intro E.secondBianchiClosed (And.intro E.contractedBianchiClosed E.compatibilityWithRicciClosed))

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse