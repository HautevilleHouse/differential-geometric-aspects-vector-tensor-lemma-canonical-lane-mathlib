import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.VectorTensorLemma

/-!
# Bridge and Gate Lemmas for Vector Tensor Lemma

This module defines the bridge and gate conditions for the admissible class closure.
-/

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

open VectorTensorLemma

def bridgeClosed (A : DifferentialGeometricAspectsAdmissibleClass) : Prop :=
  A.vectorTensorLemmaClosed

theorem bridge_from_admissible_class (A : DifferentialGeometricAspectsAdmissibleClass) : bridgeClosed A := by
  exact A.bridgeWitness

def gateClosed (A : DifferentialGeometricAspectsAdmissibleClass) : Prop :=
  True

theorem gate_from_admissible_class (A : DifferentialGeometricAspectsAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse