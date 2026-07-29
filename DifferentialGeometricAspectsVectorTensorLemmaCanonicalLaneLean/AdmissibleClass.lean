import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure VectorTensorAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  vectorBundle : Type v
  tensorBundle : Type w
  vectorField : Prop
  tensorField : Prop
  leviCivitaConnection : Prop
  curvatureTensor : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : VectorTensorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VectorTensorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse
