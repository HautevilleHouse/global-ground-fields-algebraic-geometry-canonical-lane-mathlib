import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

def ConstrainedGroundClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ground_endgame (A : AdmissibleClass) :
    ConstrainedGroundClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
