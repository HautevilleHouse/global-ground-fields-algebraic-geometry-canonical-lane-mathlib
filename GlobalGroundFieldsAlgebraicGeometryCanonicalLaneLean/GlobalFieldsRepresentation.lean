import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure GlobalGroundField where
  fieldType : Type
  addition : fieldType → fieldType → fieldType
  multiplication : fieldType → fieldType → fieldType
  zero : fieldType
  one : fieldType
  additiveGroup : Group fieldType
  multiplicativeGroupAbelian : AbelianGroup (fieldType \ {zero})
  distributive : Distributive fieldType

structure AlgebraicClosure where
  groundField : GlobalGroundField
  closureProperty : (x : groundField.fieldType) → (∃ y : groundField.fieldType, x = y * y) ∨ (∃ y : groundField.fieldType, x + y = groundField.zero)
  closureEvidence : closureProperty

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse