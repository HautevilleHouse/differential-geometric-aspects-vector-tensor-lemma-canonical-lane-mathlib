import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.VectorTensorIndices
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.CovariantDerivative

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure CurvatureTensor (I : VectorTensorIndices) (D : CovariantDerivative I) where
  riemannTensor : I.tangentSpace -> I.tangentSpace -> I.tangentSpace -> I.tangentSpace
  symmetryFirstPair : Prop
  symmetrySecondPair : Prop
  firstBianchiIdentity : Prop
  symmetryFirstPairTerm : symmetryFirstPair
  symmetrySecondPairTerm : symmetrySecondPair
  firstBianchiIdentityTerm : firstBianchiIdentity

structure CurvatureTensorEvidence {I : VectorTensorIndices} {D : CovariantDerivative I} (R : CurvatureTensor I D) where
  symmetryFirstPairClosed : R.symmetryFirstPair
  symmetrySecondPairClosed : R.symmetrySecondPair
  firstBianchiIdentityClosed : R.firstBianchiIdentity

def CurvatureTensorClosed {I : VectorTensorIndices} {D : CovariantDerivative I} (R : CurvatureTensor I D) : Prop :=
  R.symmetryFirstPair ∧ R.symmetrySecondPair ∧ R.firstBianchiIdentity

theorem curvature_tensor_closed_from_evidence {I : VectorTensorIndices} {D : CovariantDerivative I} (R : CurvatureTensor I D) (E : CurvatureTensorEvidence R) : CurvatureTensorClosed R :=
  And.intro E.symmetryFirstPairClosed (And.intro E.symmetrySecondPairClosed E.firstBianchiIdentityClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse