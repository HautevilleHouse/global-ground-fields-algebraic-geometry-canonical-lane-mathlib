import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure GaloisCohomologyPackage where
  field : Type u
  fieldStructure : Field field
  separableClosure : Type v
  galoisGroup : Type w
  galoisAction : galoisGroup → separableClosure → separableClosure
  cohomologyFunctor : Nat → Type x
  cohomologyGroups : List (Type x)
  exactSequence : Prop
  inflationRestriction : Prop

def GaloisCohomologyClosed (G : GaloisCohomologyPackage) : Prop :=
  G.exactSequence ∧ G.inflationRestriction

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse