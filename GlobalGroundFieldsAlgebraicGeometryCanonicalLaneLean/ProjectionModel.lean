import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure ProjectionModel where
  source : Type u
  target : Type v
  map : source → target
  idempotent : ∀ x, map (map x) = map x
  kernel : Prop
  kernelTerm : kernel

def projectionClosed (P : ProjectionModel) : Prop :=
  P.kernel

theorem projection_closed_from_model (P : ProjectionModel) : projectionClosed P := by
  exact P.kernelTerm

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse