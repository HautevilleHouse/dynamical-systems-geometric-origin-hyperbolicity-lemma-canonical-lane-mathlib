import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure GeodesicFlowSplittingPackage where
  tangentBundleSplitting : Prop
  stableSubbundle : Prop
  unstableSubbundle : Prop
  flowInvariantSubbundles : Prop
  angleBoundedAwayZero : Prop

structure GeodesicFlowSplittingEvidence
    (G : GeodesicFlowSplittingPackage) where
  tangentBundleSplittingClosed : G.tangentBundleSplitting
  stableSubbundleClosed : G.stableSubbundle
  unstableSubbundleClosed : G.unstableSubbundle
  flowInvariantSubbundlesClosed : G.flowInvariantSubbundles
  angleBoundedAwayZeroClosed : G.angleBoundedAwayZero

def GeodesicFlowSplittingClosed (G : GeodesicFlowSplittingPackage) : Prop :=
  G.tangentBundleSplitting ∧ G.stableSubbundle ∧
  G.unstableSubbundle ∧ G.flowInvariantSubbundles ∧ G.angleBoundedAwayZero

theorem geodesic_flow_splitting_closed_from_evidence
    (G : GeodesicFlowSplittingPackage)
    (E : GeodesicFlowSplittingEvidence G) :
    GeodesicFlowSplittingClosed G := by
  exact And.intro E.tangentBundleSplittingClosed
    (And.intro E.stableSubbundleClosed
      (And.intro E.unstableSubbundleClosed
        (And.intro E.flowInvariantSubbundlesClosed E.angleBoundedAwayZeroClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
