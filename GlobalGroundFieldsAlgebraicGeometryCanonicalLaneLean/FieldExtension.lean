import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure FieldExtensionPackage where
  groundField : Type u
  extensionField : Type v
  inclusion : groundField → extensionField
  degree : ℕ
  separable : Prop
  normal : Prop
  galois : Prop
  separableTerm : separable
  normalTerm : normal
  galoisTerm : galois

structure FieldExtensionEvidence (F : FieldExtensionPackage) where
  separableClosed : F.separable
  normalClosed : F.normal
  galoisClosed : F.galois

def FieldExtensionClosed (F : FieldExtensionPackage) : Prop :=
  F.separable ∧ F.normal ∧ F.galois

theorem field_extension_closed_from_evidence (F : FieldExtensionPackage) (E : FieldExtensionEvidence F) : FieldExtensionClosed F := by
  exact And.intro E.separableClosed (And.intro E.normalClosed E.galoisClosed)

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse