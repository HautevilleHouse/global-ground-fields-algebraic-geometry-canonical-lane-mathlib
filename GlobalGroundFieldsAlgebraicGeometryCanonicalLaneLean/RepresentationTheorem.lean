import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.UniversalProperty

/-!
# Representation Theorem Package

Records the representation theorem for a ground field object.
-/

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure RepresentationTheoremPackage where
  representationExists : Prop
  representationUnique : Prop
  representationFunctorial : Prop
  representationIsomorphism : Prop

def RepresentationTheoremClosed (R : RepresentationTheoremPackage) : Prop :=
  R.representationExists ∧ R.representationUnique ∧ R.representationFunctorial ∧ R.representationIsomorphism

structure RepresentationTheoremEvidence (R : RepresentationTheoremPackage) where
  representationExistsClosed : R.representationExists
  representationUniqueClosed : R.representationUnique
  representationFunctorialClosed : R.representationFunctorial
  representationIsomorphismClosed : R.representationIsomorphism

theorem representation_theorem_closed_from_evidence (R : RepresentationTheoremPackage)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.representationExistsClosed
    (And.intro E.representationUniqueClosed
      (And.intro E.representationFunctorialClosed E.representationIsomorphismClosed))

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
