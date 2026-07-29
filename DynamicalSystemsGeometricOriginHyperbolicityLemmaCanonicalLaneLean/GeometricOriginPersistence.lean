import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.HyperbolicSplitting

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure GeometricOriginPersistencePackage {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    {S : HyperbolicSplittingPackage H} where
  stableManifoldExists : Prop
  unstableManifoldExists : Prop
  geometricOriginIdentified : Prop
  persistenceUnderPerturbation : Prop
  stableManifoldExistsTerm : stableManifoldExists
  unstableManifoldExistsTerm : unstableManifoldExists
  geometricOriginIdentifiedTerm : geometricOriginIdentified
  persistenceUnderPerturbationTerm : persistenceUnderPerturbation

structure GeometricOriginPersistenceEvidence {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    {S : HyperbolicSplittingPackage H} (G : GeometricOriginPersistencePackage S) where
  stableManifoldExistsClosed : G.stableManifoldExists
  unstableManifoldExistsClosed : G.unstableManifoldExists
  geometricOriginIdentifiedClosed : G.geometricOriginIdentified
  persistenceUnderPerturbationClosed : G.persistenceUnderPerturbation

def GeometricOriginPersistenceClosed {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    {S : HyperbolicSplittingPackage H} (G : GeometricOriginPersistencePackage S) : Prop :=
  G.stableManifoldExists ∧ G.unstableManifoldExists ∧ G.geometricOriginIdentified ∧ G.persistenceUnderPerturbation

theorem geometric_origin_persistence_closed_from_evidence
    {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    {S : HyperbolicSplittingPackage H} (G : GeometricOriginPersistencePackage S)
    (E : GeometricOriginPersistenceEvidence G) : GeometricOriginPersistenceClosed G := by
  exact And.intro E.stableManifoldExistsClosed
    (And.intro E.unstableManifoldExistsClosed
      (And.intro E.geometricOriginIdentifiedClosed E.persistenceUnderPerturbationClosed))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse