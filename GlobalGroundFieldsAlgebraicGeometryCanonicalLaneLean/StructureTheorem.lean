import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure StructureTheoremPackage where
  field : Type u
  primeField : Type v
  inclusion : primeField → field
  transcendenceDegree : ℕ
  algebraicity : Prop
  closureInAlgebraicClosure : Prop
  algebraicityTerm : algebraicity
  closureTerm : closureInAlgebraicClosure

structure StructureTheoremEvidence (S : StructureTheoremPackage) where
  algebraicityClosed : S.algebraicity
  closureInAlgebraicClosureClosed : S.closureInAlgebraicClosure

def StructureTheoremClosed (S : StructureTheoremPackage) : Prop :=
  S.algebraicity ∧ S.closureInAlgebraicClosure

theorem structure_theorem_closed_from_evidence (S : StructureTheoremPackage) (E : StructureTheoremEvidence S) : StructureTheoremClosed S := by
  exact And.intro E.algebraicityClosed E.closureInAlgebraicClosureClosed

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse