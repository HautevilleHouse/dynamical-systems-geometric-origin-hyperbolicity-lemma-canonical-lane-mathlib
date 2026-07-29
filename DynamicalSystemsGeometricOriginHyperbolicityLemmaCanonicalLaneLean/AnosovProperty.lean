import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure AnosovPropertyPackage where
  uniformlyHyperbolicFlow : Prop
  structuralStability : Prop
  growthRateControlled : Prop
  periodicOrbitsDense : Prop

def anosoV_closed (A : AdmissibleClass) : Prop :=
  let H := A.object.hyperbolic ; H.uniformlyHyperbolicFlow ∧ H.structuralStability

theorem anoso_v_property_endgame (A : AdmissibleClass) : anosoV_closed A :=
  by
    let H := A.object.hyperbolic
    exact And.intro H.uniformlyHyperbolicFlow H.structuralStability

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
