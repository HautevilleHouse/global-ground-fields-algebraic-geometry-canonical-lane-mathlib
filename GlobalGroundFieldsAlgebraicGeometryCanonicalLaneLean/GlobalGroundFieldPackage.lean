import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure GroundField where
  k : Type u
  isField : CommRing k ∧ Field k
  characteristic : Nat

default characteristic := 0

definition SplittingRing (k : GroundField) (p : Polynomial (GroundField.k k)) : Type u := by
  sorry

structure AlgebraicClosure where
  k : GroundField
  closure : GroundField
  isAlgClosed : AlgebraicallyClosedField (GroundField.k closure)
  inclusion : (GroundField.k k) →+* (GroundField.k closure)

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse