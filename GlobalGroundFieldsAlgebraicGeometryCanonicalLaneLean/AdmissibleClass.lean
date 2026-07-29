import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : AlgebraicGroundObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraicGroundWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
