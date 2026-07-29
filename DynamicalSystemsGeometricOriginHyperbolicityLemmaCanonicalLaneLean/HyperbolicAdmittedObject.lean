import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier

structure HyperbolicAdmittedObject where
  space : HyperbolicSpace
  uniformHyperbolicity : Prop
  invariantSet : Prop
  stableUnstableBundles : Prop
  conclusion : stableUnstableBundles

structure HyperbolicEndgameState where
  object : HyperbolicAdmittedObject

def HyperbolicWitnessClosed (O : HyperbolicAdmittedObject) : Prop :=
  O.stableUnstableBundles

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse