import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.FieldExtension

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure Representation (V : Type u) (k : GroundField) where
  vectorSpace : Module (GroundField.k k) V
  -- additional structure as needed

structure LinearRepresentation (G : Type v) (V : Type u) (k : GroundField) where
  rep : G → (V →ₗ[GroundField.k k] V)
  compat : ∀ g h, rep (g * h) = (rep g).comp (rep h)
  unit : rep 1 = LinearMap.id

structure AlgebraRepresentation (A : Type v) (V : Type u) (k : GroundField) where
  rep : A → (V →ₗ[GroundField.k k] V)
  compat_mul : ∀ a b, rep (a * b) = (rep a).comp (rep b)
  compat_add : ∀ a b, rep (a + b) = rep a + rep b
  unit : rep 1 = LinearMap.id

theorem representation_extension (V : Type u) (k L : GroundField) (f : FieldExtension k L) (rep : Representation V L) : Representation V k := by
  sorry

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse