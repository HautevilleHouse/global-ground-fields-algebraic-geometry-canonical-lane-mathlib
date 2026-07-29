import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : AlgebraicallyClosedGroundFieldObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroundFieldClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse