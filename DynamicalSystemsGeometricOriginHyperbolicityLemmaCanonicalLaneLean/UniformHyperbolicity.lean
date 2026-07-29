import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure UniformHyperbolicityPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dynamics : manifold → manifold
  invariantSet : Set manifold
  tangentBundleSplit : Prop
  contractingDirection : Prop
  expandingDirection : Prop
  uniformBounds : Prop

structure UniformHyperbolicityEvidence (U : UniformHyperbolicityPackage) where
  invariantSetClosed : U.invariantSet
  tangentBundleSplitClosed : U.tangentBundleSplit
  contractingDirectionClosed : U.contractingDirection
  expandingDirectionClosed : U.expandingDirection
  uniformBoundsClosed : U.uniformBounds

def UniformHyperbolicityClosed (U : UniformHyperbolicityPackage) : Prop :=
  U.invariantSet ∧ U.tangentBundleSplit ∧
  U.contractingDirection ∧ U.expandingDirection ∧ U.uniformBounds

theorem uniform_hyperbolicity_closed_from_evidence (U : UniformHyperbolicityPackage)
    (E : UniformHyperbolicityEvidence U) : UniformHyperbolicityClosed U := by
  exact And.intro E.invariantSetClosed
    (And.intro E.tangentBundleSplitClosed
      (And.intro E.contractingDirectionClosed
        (And.intro E.expandingDirectionClosed E.uniformBoundsClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse