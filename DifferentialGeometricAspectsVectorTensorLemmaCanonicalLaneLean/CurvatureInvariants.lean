import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure CurvatureInvariantsPackage where
  riemannCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  curvatureSymmetries : Prop
  contractionIdentities : Prop
  constantCurvatureModel : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  curvatureSymmetriesClosed : C.curvatureSymmetries
  contractionIdentitiesClosed : C.contractionIdentities
  constantCurvatureModelClosed : C.constantCurvatureModel

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.curvatureSymmetries ∧ C.contractionIdentities ∧ C.constantCurvatureModel

theorem curvature_invariants_closed_from_evidence
    (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.curvatureSymmetriesClosed
    (And.intro E.contractionIdentitiesClosed E.constantCurvatureModelClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse