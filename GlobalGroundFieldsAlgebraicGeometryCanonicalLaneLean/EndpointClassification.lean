import canonicalLaneMathlib.EndpointClassification

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure EndpointClassificationPackage (G : GlobalGroundField) where
  targetField : Type
  fieldStructure : GlobalGroundField
  isomorphismToAlgebraicClosure : AlgebraicClosure G ≃ AlgebraicClosure fieldStructure
  closureMatchesGlobalFields : Prop
  closureMatchesGlobalFieldsEvidence : closureMatchesGlobalFields

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse