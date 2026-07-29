import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.VectorTensorIndices
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.CovariantDerivative
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.CurvatureTensor

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure RicciIdentity (I : VectorTensorIndices) (D : CovariantDerivative I) (R : CurvatureTensor I D) where
  commutatorSecondCovariant : Prop
  curvatureInterchange : Prop
  ricciLemmaForVectorFields : Prop
  commutatorSecondCovariantTerm : commutatorSecondCovariant
  curvatureInterchangeTerm : curvatureInterchange
  ricciLemmaForVectorFieldsTerm : ricciLemmaForVectorFields

structure RicciIdentityEvidence {I : VectorTensorIndices} {D : CovariantDerivative I} {R : CurvatureTensor I D} (Ric : RicciIdentity I D R) where
  commutatorSecondCovariantClosed : Ric.commutatorSecondCovariant
  curvatureInterchangeClosed : Ric.curvatureInterchange
  ricciLemmaForVectorFieldsClosed : Ric.ricciLemmaForVectorFields

def RicciIdentityClosed {I : VectorTensorIndices} {D : CovariantDerivative I} {R : CurvatureTensor I D} (Ric : RicciIdentity I D R) : Prop :=
  Ric.commutatorSecondCovariant ∧ Ric.curvatureInterchange ∧ Ric.ricciLemmaForVectorFields

theorem ricci_identity_closed_from_evidence {I : VectorTensorIndices} {D : CovariantDerivative I} {R : CurvatureTensor I D} (Ric : RicciIdentity I D R) (E : RicciIdentityEvidence Ric) : RicciIdentityClosed Ric :=
  And.intro E.commutatorSecondCovariantClosed (And.intro E.curvatureInterchangeClosed E.ricciLemmaForVectorFieldsClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse