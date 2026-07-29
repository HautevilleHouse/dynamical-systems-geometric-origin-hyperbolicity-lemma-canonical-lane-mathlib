import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure ShadowingPackage (M : Type) [TopologicalSpace M] [MetricSpace M] where
  diffeomorphism : M → M
  hyperbolicSet : Set M
  pseudoOrbit : ℕ → M
  trueOrbit : ℕ → M
  shadowingDistance : ℝ
  shadowingProperty : Prop

structure ShadowingEvidence (P : ShadowingPackage M) where
  shadowingPropertyClosed : P.shadowingProperty

def ShadowingClosed (P : ShadowingPackage M) : Prop :=
  P.shadowingProperty

theorem shadowing_closed_from_evidence (P : ShadowingPackage M) (E : ShadowingEvidence P) : ShadowingClosed P := by
  exact E.shadowingPropertyClosed

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse