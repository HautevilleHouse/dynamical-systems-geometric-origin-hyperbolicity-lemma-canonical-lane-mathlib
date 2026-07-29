import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicityLemmaPackage where
  geodesicFlowIsAnosov : Prop
  invariantSplittingContinuous : Prop
  exponentialContractionExpansion : Prop
  periodicOrbitsSeparated : Prop

structure HyperbolicityLemmaEvidence (H : HyperbolicityLemmaPackage) where
  geodesicFlowIsAnosovClosed : H.geodesicFlowIsAnosov
  invariantSplittingContinuousClosed : H.invariantSplittingContinuous
  exponentialContractionExpansionClosed : H.exponentialContractionExpansion
  periodicOrbitsSeparatedClosed : H.periodicOrbitsSeparated

def HyperbolicityLemmaClosed (H : HyperbolicityLemmaPackage) : Prop :=
  H.geodesicFlowIsAnosov ∧ H.invariantSplittingContinuous ∧
  H.exponentialContractionExpansion ∧ H.periodicOrbitsSeparated

theorem hyperbolicity_lemma_closed_from_evidence
    (H : HyperbolicityLemmaPackage)
    (E : HyperbolicityLemmaEvidence H) :
    HyperbolicityLemmaClosed H := by
  exact And.intro E.geodesicFlowIsAnosovClosed
    (And.intro E.invariantSplittingContinuousClosed
      (And.intro E.exponentialContractionExpansionClosed
        E.periodicOrbitsSeparatedClosed))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
