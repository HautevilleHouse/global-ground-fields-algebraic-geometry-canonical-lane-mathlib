import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure RationalPointsPackage where
  variety : Type u
  baseField : Type v
  fieldStructure : Field baseField
  rationalPoints : Set variety
  embedding : rationalPoints → variety
  zariskiClosure : Set variety
  density : rationalPoints ⊆ zariskiClosure
  finiteGeneration : Prop

def RationalPointsClosed (R : RationalPointsPackage) : Prop :=
  R.finiteGeneration ∧ R.density

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse