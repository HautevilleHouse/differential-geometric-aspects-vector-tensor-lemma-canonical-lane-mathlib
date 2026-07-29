import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.Core
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.Bridge
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.Gate

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

def ConstrainedVectorTensorLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vector_tensor_lemma_endgame (A : AdmissibleClass) :
    ConstrainedVectorTensorLemmaClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse
