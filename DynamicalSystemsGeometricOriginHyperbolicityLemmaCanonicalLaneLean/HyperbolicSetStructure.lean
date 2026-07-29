import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicSetPackage (M : Type) [TopologicalSpace M] where
  invariantSet : Set M
  tangentBundleSplitting : Type
  stableDistribution : Type
  unstableDistribution : Type
  uniformExpansionContraction : Prop
  angleCondition : Prop

structure HyperbolicSetEvidence (P : HyperbolicSetPackage M) where
  uniformExpansionContractionClosed : P.uniformExpansionContraction
  angleConditionClosed : P.angleCondition

def HyperbolicSetClosed (P : HyperbolicSetPackage M) : Prop :=
  P.uniformExpansionContraction ∧ P.angleCondition

theorem hyperbolic_set_closed_from_evidence (P : HyperbolicSetPackage M) (E : HyperbolicSetEvidence P) : HyperbolicSetClosed P := by
  exact And.intro E.uniformExpansionContractionClosed E.angleConditionClosed

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse