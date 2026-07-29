import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure VectorTensorIndices where
  baseSpace : Type u
  tangentSpace : Type v
  cotangentSpace : Type w
  valence : Nat × Nat -- (contravariant, covariant)
  fiberType : Type
  smoothStructure : Prop
  fiberTypeTerm : fiberType
  smoothStructureTerm : smoothStructure

structure VectorTensorIndicesEvidence (I : VectorTensorIndices) where
  fiberTypeClosed : I.fiberType
  smoothStructureClosed : I.smoothStructure

def VectorTensorIndicesClosed (I : VectorTensorIndices) : Prop :=
  I.fiberType ∧ I.smoothStructure

theorem vector_tensor_indices_closed_from_evidence (I : VectorTensorIndices) (E : VectorTensorIndicesEvidence I) : VectorTensorIndicesClosed I :=
  And.intro E.fiberTypeClosed E.smoothStructureClosed

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse