import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure BrauerGroupPackage where
  field : Type u
  fieldStructure : Field field
  centralSimpleAlgebras : List (Type v)
  equivalenceRelation : centralSimpleAlgebras → centralSimpleAlgebras → Prop
  brauerGroup : Type w
  groupStructure : Group brauerGroup
  injectivity : Prop
  surjectivity : Prop
  exactSequence : Prop

def BrauerGroupClosed (B : BrauerGroupPackage) : Prop :=
  B.injectivity ∧ B.surjectivity ∧ B.exactSequence

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse