import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure GroundFieldAdmissibleObject where
  baseField : Type u
  fieldStructure : Field baseField
  algebraicClosure : Type v
  closureEmbedding : baseField → algebraicClosure
  algebraicClosureAlgebraic : Algebra algebraicClosure algebraicClosure
  absoluteGaloisGroup : Type w
  fixedField : baseField → absoluteGaloisGroup → baseField

def GroundFieldAdmissible (O : GroundFieldAdmissibleObject) : Prop :=
  let A : AdmissibleClass := {
    object := O
    endpointSatisfied := True
    remainderRecorded := False
    gateWitness := Or.inl True.intro
  }
  admittedClosure A

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse