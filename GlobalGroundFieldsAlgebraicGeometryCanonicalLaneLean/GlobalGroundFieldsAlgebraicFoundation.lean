import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.StructureDecomposition

/-!
# Global Ground Fields Algebraic Foundation

Assembles the universal property, representation theorem, and structure decomposition
into a single foundation package.
-/

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure GlobalGroundFieldsAlgebraicFoundation where
  universalProperty : UniversalPropertyPackage
  universalPropertyEvidence : UniversalPropertyEvidence universalProperty
  representationTheorem : RepresentationTheoremPackage
  representationTheoremEvidence : RepresentationTheoremEvidence representationTheorem
  structureDecomposition : StructureDecompositionPackage
  structureDecompositionEvidence : StructureDecompositionEvidence structureDecomposition

def GlobalGroundFieldsAlgebraicFoundationClosed (A : GlobalGroundFieldsAlgebraicFoundation) : Prop :=
  UniversalPropertyClosed A.universalProperty ∧
  RepresentationTheoremClosed A.representationTheorem ∧
  StructureDecompositionClosed A.structureDecomposition

theorem global_ground_fields_algebraic_foundation_closed_from_evidence
    (A : GlobalGroundFieldsAlgebraicFoundation) :
    GlobalGroundFieldsAlgebraicFoundationClosed A := by
  exact And.intro
    (universal_property_closed_from_evidence A.universalProperty A.universalPropertyEvidence)
    (And.intro
      (representation_theorem_closed_from_evidence A.representationTheorem A.representationTheoremEvidence)
      (structure_decomposition_closed_from_evidence A.structureDecomposition A.structureDecompositionEvidence))

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
