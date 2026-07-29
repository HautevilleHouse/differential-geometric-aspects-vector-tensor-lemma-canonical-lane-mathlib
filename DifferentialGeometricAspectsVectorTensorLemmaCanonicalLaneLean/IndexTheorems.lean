import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperator : Type u
  symbol : Type v
  analyticalIndex : Type w
  topologicalIndex : Type x
  indexFormula : Prop
  nullSpaceData : Prop
  operatorCompactness : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexFormulaClosed : I.indexFormula
  nullSpaceDataClosed : I.nullSpaceData
  operatorCompactnessClosed : I.operatorCompactness

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.nullSpaceData ∧ I.operatorCompactness

theorem index_theorem_closed_from_evidence
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed
    (And.intro E.nullSpaceDataClosed E.operatorCompactnessClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse