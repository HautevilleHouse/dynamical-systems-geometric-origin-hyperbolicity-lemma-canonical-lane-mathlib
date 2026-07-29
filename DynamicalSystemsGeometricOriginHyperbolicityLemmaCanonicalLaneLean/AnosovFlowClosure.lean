import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.GeodesicFlowAnalysis
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.LyapunovExponentEstimate
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.HyperbolicSetStructure
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.StableManifoldTheorem
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.ShadowingLemma
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.PesinEntropyFormula

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeodesicFlowClosed A.object ∧ LyapunovExponentClosed A.object ∧ HyperbolicSetClosed A.object ∧ StableManifoldClosed A.object ∧ ShadowingClosed A.object ∧ PesinEntropyClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : GeodesicFlowClosed A.object := A.geodesicFlowClosed
  have h2 : LyapunovExponentClosed A.object := A.lyapunovExponentClosed
  have h3 : HyperbolicSetClosed A.object := A.hyperbolicSetClosed
  have h4 : StableManifoldClosed A.object := A.stableManifoldClosed
  have h5 : ShadowingClosed A.object := A.shadowingClosed
  have h6 : PesinEntropyClosed A.object := A.pesinEntropyClosed
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 h6))))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedHyperbolicityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hyperbolicity_endgame (A : AdmissibleClass) : ConstrainedHyperbolicityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse