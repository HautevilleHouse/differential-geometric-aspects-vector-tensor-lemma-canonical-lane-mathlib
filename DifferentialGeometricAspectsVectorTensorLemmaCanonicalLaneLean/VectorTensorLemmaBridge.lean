import DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorTensorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end DifferentialGeometricAspectsVectorTensorLemmaCanonicalLaneLean
end HautevilleHouse
