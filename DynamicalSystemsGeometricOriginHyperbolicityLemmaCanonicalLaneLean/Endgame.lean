import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.BridgeLemmas
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

def ConstrainedHyperbolicityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hyperbolicity_endgame (A : AdmissibleClass) :
    ConstrainedHyperbolicityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
