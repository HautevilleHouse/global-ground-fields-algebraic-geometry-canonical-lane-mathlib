import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.RepresentationTheorem

/-!
# Structure Decomposition Package

Records the structure decomposition for a ground field object.
-/

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure StructureDecompositionPackage where
  decompositionExists : Prop
  decompositionUnique : Prop
  decompositionCompatible : Prop
  decompositionInduces : Prop

def StructureDecompositionClosed (S : StructureDecompositionPackage) : Prop :=
  S.decompositionExists ∧ S.decompositionUnique ∧ S.decompositionCompatible ∧ S.decompositionInduces

structure StructureDecompositionEvidence (S : StructureDecompositionPackage) where
  decompositionExistsClosed : S.decompositionExists
  decompositionUniqueClosed : S.decompositionUnique
  decompositionCompatibleClosed : S.decompositionCompatible
  decompositionInducesClosed : S.decompositionInduces

theorem structure_decomposition_closed_from_evidence (S : StructureDecompositionPackage)
    (E : StructureDecompositionEvidence S) : StructureDecompositionClosed S := by
  exact And.intro E.decompositionExistsClosed
    (And.intro E.decompositionUniqueClosed
      (And.intro E.decompositionCompatibleClosed E.decompositionInducesClosed))

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
