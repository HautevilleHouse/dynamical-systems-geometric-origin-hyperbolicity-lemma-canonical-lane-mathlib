import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Deep Analytic Construction
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicDeepConstruction where
  geometricModel : Prop
  hyperbolicityCriteria : Prop
  dynamicStability : Prop
  geometricModelClosed : geometricModel
  hyperbolicityCriteriaClosed : hyperbolicityCriteria
  dynamicStabilityClosed : dynamicStability

def HyperbolicConstructionClosed (C : HyperbolicDeepConstruction) : Prop :=
  C.geometricModel ∧ C.hyperbolicityCriteria ∧ C.dynamicStability

theorem hyperbolic_construction_closed (C : HyperbolicDeepConstruction) :
    HyperbolicConstructionClosed C := by
  exact And.intro C.geometricModelClosed
    (And.intro C.hyperbolicityCriteriaClosed C.dynamicStabilityClosed)

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
