import GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean.GlobalGroundFieldsGateLemmas

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

def GlobalGroundFieldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem global_ground_fields_endgame (A : AdmissibleClass) :
    GlobalGroundFieldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse