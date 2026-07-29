import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicGroundWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
