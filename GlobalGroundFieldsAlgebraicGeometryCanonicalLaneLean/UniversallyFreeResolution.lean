import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure FreeResolutionPackage where
  baseScheme : Type u
  structureSheafO : Type v
  freeSheaf : Type w
  resolutionMorphism : freeSheaf → structureSheafO
  exactness : Prop
  syzygyModule : Type x
  length : Nat

def FreeResolutionClosed (F : FreeResolutionPackage) : Prop :=
  F.exactness ∧ F.length ≥ 0

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse