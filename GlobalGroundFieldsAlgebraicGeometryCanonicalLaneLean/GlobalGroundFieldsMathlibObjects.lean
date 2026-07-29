import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.GlobalGroundFieldsTheoremStatement

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure FieldExtensionObject where
  base : Type u
  extension : Type u
  morphism : base → extension
  isAlgebraic : Prop
  isPerfect : Prop
  hasFiniteType : Prop

structure AlgebraicallyClosedGroundFieldObject where
  field : Type u
  isAlgebraicallyClosed : Prop
  characteristicZero : Prop
  conclusion : isAlgebraicallyClosed ∧ characteristicZero

structure GroundFieldState where
  object : AlgebraicallyClosedGroundFieldObject

def GroundFieldClosed (O : AlgebraicallyClosedGroundFieldObject) : Prop :=
  O.conclusion

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse