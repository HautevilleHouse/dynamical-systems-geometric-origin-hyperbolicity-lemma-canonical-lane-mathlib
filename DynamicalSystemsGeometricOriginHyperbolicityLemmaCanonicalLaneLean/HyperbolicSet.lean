import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicSetPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dynamics : manifold → manifold
  set : Set manifold
  metric : Prop
  splittingContinuity : Prop
  exponentialGrowthRates : Prop

structure HyperbolicSetEvidence (H : HyperbolicSetPackage) where
  metricClosed : H.metric
  splittingContinuityClosed : H.splittingContinuity
  exponentialGrowthRatesClosed : H.exponentialGrowthRates

def HyperbolicSetClosed (H : HyperbolicSetPackage) : Prop :=
  H.metric ∧ H.splittingContinuity ∧ H.exponentialGrowthRates

theorem hyperbolic_set_closed_from_evidence (H : HyperbolicSetPackage)
    (E : HyperbolicSetEvidence H) : HyperbolicSetClosed H := by
  exact And.intro E.metricClosed
    (And.intro E.splittingContinuityClosed E.exponentialGrowthRatesClosed)

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse