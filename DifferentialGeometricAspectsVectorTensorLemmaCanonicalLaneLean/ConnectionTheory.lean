import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure ConnectionTheoryPackage where
  affineConnection : Type u
  parallelTransport : Type v
  covariantDerivative : Type w
  torsionTensor : Type x
  holonomyGroup : Type y
  metricCompatible : Prop
  torsionFree : Prop
  curvatureRelation : Prop
  holonomyPrinciple : Prop

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree
  curvatureRelationClosed : C.curvatureRelation
  holonomyPrincipleClosed : C.holonomyPrinciple

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.metricCompatible ∧ C.torsionFree ∧ C.curvatureRelation ∧ C.holonomyPrinciple

theorem connection_theory_closed_from_evidence
    (C : ConnectionTheoryPackage) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.metricCompatibleClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.curvatureRelationClosed E.holonomyPrincipleClosed))

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse