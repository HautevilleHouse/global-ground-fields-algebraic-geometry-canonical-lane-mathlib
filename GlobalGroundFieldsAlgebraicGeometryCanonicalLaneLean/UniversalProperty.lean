import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

/-!
# Universal Property Package

Records the universal property of a ground field object.
-/

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure UniversalPropertyPackage where
  initialObject : Prop
  terminalObject : Prop
  uniqueMorphism : Prop
  universalMapping : Prop

def UniversalPropertyClosed (U : UniversalPropertyPackage) : Prop :=
  U.initialObject ∧ U.terminalObject ∧ U.uniqueMorphism ∧ U.universalMapping

structure UniversalPropertyEvidence (U : UniversalPropertyPackage) where
  initialObjectClosed : U.initialObject
  terminalObjectClosed : U.terminalObject
  uniqueMorphismClosed : U.uniqueMorphism
  universalMappingClosed : U.universalMapping

theorem universal_property_closed_from_evidence (U : UniversalPropertyPackage)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact And.intro E.initialObjectClosed
    (And.intro E.terminalObjectClosed
      (And.intro E.uniqueMorphismClosed E.universalMappingClosed))

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
