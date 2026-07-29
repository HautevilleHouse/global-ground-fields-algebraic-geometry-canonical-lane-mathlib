import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AlgebraicGround where
  carrier : Type
  structure : Type

structure AlgebraicGroundObject where
  ground : AlgebraicGround
  universalProperty : Prop
  representationTheorem : Prop
  structureDecomposition : Prop
  conclusion : universalProperty ∧ representationTheorem ∧ structureDecomposition

structure AlgebraicEndgameState where
  object : AlgebraicGroundObject

def AlgebraicGroundWitnessClosed (O : AlgebraicGroundObject) : Prop :=
  O.conclusion

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
