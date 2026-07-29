import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def groundProjection : Projection AlgebraicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ground_projection_idempotent (x : AlgebraicEndgameState) :
    groundProjection.toFun (groundProjection.toFun x) = groundProjection.toFun x :=
  by exact groundProjection.idempotent x

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
