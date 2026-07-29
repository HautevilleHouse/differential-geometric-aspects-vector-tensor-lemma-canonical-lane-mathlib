import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.VectorTensorIndices

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

structure CovariantDerivative (I : VectorTensorIndices) where
  connection : Type
  direction : I.tangentSpace -> I.fiberType -> I.fiberType
  leibnizRule : Prop
  torsionFree : Prop
  metricCompatible : Prop
  leibnizRuleTerm : leibnizRule
  torsionFreeTerm : torsionFree
  metricCompatibleTerm : metricCompatible

structure CovariantDerivativeEvidence {I : VectorTensorIndices} (D : CovariantDerivative I) where
  leibnizRuleClosed : D.leibnizRule
  torsionFreeClosed : D.torsionFree
  metricCompatibleClosed : D.metricCompatible

def CovariantDerivativeClosed {I : VectorTensorIndices} (D : CovariantDerivative I) : Prop :=
  D.leibnizRule ∧ D.torsionFree ∧ D.metricCompatible

theorem covariant_derivative_closed_from_evidence {I : VectorTensorIndices} (D : CovariantDerivative I) (E : CovariantDerivativeEvidence D) : CovariantDerivativeClosed D :=
  And.intro E.leibnizRuleClosed (And.intro E.torsionFreeClosed E.metricCompatibleClosed)

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse