import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.GlobalGroundFieldsAdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

def groundFieldProjection : GroundFieldState → GroundFieldState := id

theorem ground_field_projection_idempotent (x : GroundFieldState) :
    groundFieldProjection (groundFieldProjection x) = groundFieldProjection x := by
  rfl

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse