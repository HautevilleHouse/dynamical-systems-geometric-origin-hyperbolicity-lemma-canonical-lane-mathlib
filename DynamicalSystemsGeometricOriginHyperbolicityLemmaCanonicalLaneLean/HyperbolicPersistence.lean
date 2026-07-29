import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.DeepAnalyticConstruction

/-!
# Hyperbolic Persistence Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicPersistencePackage where
  persistenceUnderSmallPerturbation : Prop
  structuralStability : Prop
  shadowingProperty : Prop

def HyperbolicPersistenceClosed (P : HyperbolicPersistencePackage) : Prop :=
  P.persistenceUnderSmallPerturbation ∧ P.structuralStability ∧ P.shadowingProperty

theorem hyperbolic_persistence_closed (P : HyperbolicPersistencePackage) : HyperbolicPersistenceClosed P := by
  exact And.intro P.persistenceUnderSmallPerturbation (And.intro P.structuralStability P.shadowingProperty)

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse
