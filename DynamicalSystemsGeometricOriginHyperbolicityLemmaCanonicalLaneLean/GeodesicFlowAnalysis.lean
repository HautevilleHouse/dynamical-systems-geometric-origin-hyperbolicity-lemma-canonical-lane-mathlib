import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure GeodesicFlowPackage (M : Type) [TopologicalSpace M] where
  manifold : M
  riemannianMetric : Type
  geodesicFlow : M → M → ℝ → M
  flowInvariantUnderMetric : Prop
  anosovProperty : Prop

structure GeodesicFlowEvidence (P : GeodesicFlowPackage M) where
  flowInvariantUnderMetricClosed : P.flowInvariantUnderMetric
  anosovPropertyClosed : P.anosovProperty

def GeodesicFlowClosed (P : GeodesicFlowPackage M) : Prop :=
  P.flowInvariantUnderMetric ∧ P.anosovProperty

theorem geodesic_flow_closed_from_evidence (P : GeodesicFlowPackage M) (E : GeodesicFlowEvidence P) : GeodesicFlowClosed P := by
  exact And.intro E.flowInvariantUnderMetricClosed E.anosovPropertyClosed

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse