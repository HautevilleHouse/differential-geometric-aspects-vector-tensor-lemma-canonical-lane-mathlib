import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "differential-geometric-aspects-vector-tensor-lemma",
  theoremName := "VectorTensorLemma",
  theoremObject := "Differential Geometric Aspects Vector Tensor Lemma",
  classicalBoundary := "full classical boundary carried by formalization certificate",
  constrainedStatement := "constrained vector-tensor admissible closure internalized through bridge and gate",
  certificateLane := "vector_tensor_constrained",
  carriedRemainder := "epsilon transport gap and full manifold compatibility"
}

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse
