import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.UniformHyperbolicityPackage

/-!
# Stable Manifold Theorem Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure StableManifoldTheoremPackage (O : HyperbolicAdmittedObject)
    {P : UniformHyperbolicityPackage O} (Q : UniformHyperbolicityPackaged Q? ?) where
  localStableManifoldExists : Prop
  localUnstableManifoldExists : Prop
  leafEmbedding : Prop
  productStructure : Prop

def StableManifoldTheoremClosed (O : HyperbolicAdmittedObject)
    (P : UniformHyperbolicityPackage O) (Q : StableManifoldTheoremPackage O) : Prop :=
  Q.localStableManifoldExists ∧ Q.localUnstableManifoldExists ∧ Q.leafEmbedding ∧ Q.productStructure

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse