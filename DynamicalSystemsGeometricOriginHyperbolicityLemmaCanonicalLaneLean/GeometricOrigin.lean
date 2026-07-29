import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure GeometricOriginPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dynamics : manifold → manifold
  periodicOrbit : Set manifold
  invariantMeasure : Prop
  lyapunovExponents : Prop
  dominatedSplitting : Prop

structure GeometricOriginEvidence (G : GeometricOriginPackage) where
  periodicOrbitClosed : G.periodicOrbit
  invariantMeasureClosed : G.invariantMeasure
  lyapunovExponentsClosed : G.lyapunovExponents
  dominatedSplittingClosed : G.dominatedSplitting

def GeometricOriginClosed (G : GeometricOriginPackage) : Prop :=
  G.periodicOrbit ∧ G.invariantMeasure ∧
  G.lyapunovExponents ∧ G.dominatedSplitting

theorem geometric_origin_closed_from_evidence (G : GeometricOriginPackage)
    (E : GeometricOriginEvidence G) : GeometricOriginClosed G := by
  exact And.intro E.periodicOrbitClosed
    (And.intro E.invariantMeasureClosed
      (And.intro E.lyapunovExponentsClosed E.dominatedSplittingClosed))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse