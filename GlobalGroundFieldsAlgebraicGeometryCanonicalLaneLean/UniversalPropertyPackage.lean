import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure UniversalPropertyPackage (G : GlobalGroundField) where
  field : G.fieldType
  universalMapping : (A : Type) → (algebraicStructure : AlgebraicClosure) → (field → algebraicStructure.groundField.fieldType) → Prop
  factorisationProperty : ∀ (h : field → algebraicStructure.groundField.fieldType), universalMapping field algebraicStructure h
  factorisationEvidence : factorisationProperty

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse