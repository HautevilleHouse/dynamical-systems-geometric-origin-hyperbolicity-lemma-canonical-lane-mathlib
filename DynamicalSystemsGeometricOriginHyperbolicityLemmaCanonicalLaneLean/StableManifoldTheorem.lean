import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure StableManifoldPackage (M : Type) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin n))) M] where
  hyperbolicFixedPoint : M
  localStableManifold : Set M
  localUnstableManifold : Set M
  stableManifoldEmbeddedDisk : Prop
  unstableManifoldEmbeddedDisk : Prop
  tangencyAtFixedPoint : Prop

structure StableManifoldEvidence (P : StableManifoldPackage M) where
  stableManifoldEmbeddedDiskClosed : P.stableManifoldEmbeddedDisk
  unstableManifoldEmbeddedDiskClosed : P.unstableManifoldEmbeddedDisk
  tangencyAtFixedPointClosed : P.tangencyAtFixedPoint

def StableManifoldClosed (P : StableManifoldPackage M) : Prop :=
  P.stableManifoldEmbeddedDisk ∧ P.unstableManifoldEmbeddedDisk ∧ P.tangencyAtFixedPoint

theorem stable_manifold_closed_from_evidence (P : StableManifoldPackage M) (E : StableManifoldEvidence P) : StableManifoldClosed P := by
  exact And.intro E.stableManifoldEmbeddedDiskClosed (And.intro E.unstableManifoldEmbeddedDiskClosed E.tangencyAtFixedPointClosed)

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse