import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicDynamicsPackage where
  geodesicFlowDefined : Prop
  invariantSplittingExists : Prop
  stableExpandingDistortion : Prop
  uniformContractionRate : Prop
  closureUnderFlow : Prop

structure HyperbolicDynamicsEvidence (H : HyperbolicDynamicsPackage) where
  geodesicFlowDefinedClosed : H.geodesicFlowDefined
  invariantSplittingExistsClosed : H.invariantSplittingExists
  stableExpandingDistortionClosed : H.stableExpandingDistortion
  uniformContractionRateClosed : H.uniformContractionRate
  closureUnderFlowClosed : H.closureUnderFlow

def HyperbolicDynamicsClosed (H : HyperbolicDynamicsPackage) : Prop :=
  H.geodesicFlowDefined ∧ H.invariantSplittingExists ∧
  H.stableExpandingDistortion ∧ H.uniformContractionRate ∧ H.closureUnderFlow

theorem hyperbolic_dynamics_closed_from_evidence
    (H : HyperbolicDynamicsPackage) (E : HyperbolicDynamicsEvidence H) :
    HyperbolicDynamicsClosed H := by
  exact And.intro E.geodesicFlowDefinedClosed
    (And.intro E.invariantSplittingExistsClosed
      (And.intro E.stableExpandingDistortionClosed
        (And.intro E.uniformContractionRateClosed E.closureUnderFlowClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
