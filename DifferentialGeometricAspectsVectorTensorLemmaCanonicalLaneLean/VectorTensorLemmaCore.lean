import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.TensorProduct
import Mathlib.Analysis.Calculus.VectorField

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure VectorTensorObject where
  vectorBundle : Type u
  tensorBundle : Type v
  connection : Type w
  curvature : Type x
  vectorTensorIdentities : Prop
  conclusion : vectorTensorIdentities

structure AdmittedObject where
  object : VectorTensorObject
  witness : object.vectorTensorIdentities

def VectorTensorWitnessClosed (O : AdmittedObject) : Prop :=
  O.object.vectorTensorIdentities

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse
