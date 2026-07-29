import Mathlib

namespace HautevilleHouse
namespace GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := ""
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  []

def sourceFunctions : List SourceFunctionDecl :=
  []

def sourceClasses : List SourceClassDecl :=
  []

def sourceAssignments : List SourceAssignmentDecl :=
  []

def constantSpecs : List ConstantSpec :=
  [{ group := "constants", key := "kappa_ground", status := "derived_numeric", formula := "kappa_ground_raw", sourceSection := "paper/GLOBAL_GROUND.md", validation := "required_positive", componentKeys := ["kappa_ground_raw"] },
   { group := "constants", key := "sigma_ground", status := "derived_numeric", formula := "sigma_ground_raw", sourceSection := "paper/GLOBAL_GROUND.md", validation := "required_positive", componentKeys := ["sigma_ground_raw"] }]

def registryConstants : List RegistryConstant :=
  [{ key := "kappa_ground", value := "1.0", theoremLevel := true, status := "derived_numeric", source := "extracted", sourceSection := "paper/GLOBAL_GROUND.md" },
   { key := "sigma_ground", value := "1.0", theoremLevel := true, status := "derived_numeric", source := "extracted", sourceSection := "paper/GLOBAL_GROUND.md" }]

def sourceRepository : String := "global-ground-fields-algebraic-geometry-canonical-lane"
def sourceDescription : String := "Global Ground Fields Algebraic Geometry"

end GlobalGroundFieldsAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse
