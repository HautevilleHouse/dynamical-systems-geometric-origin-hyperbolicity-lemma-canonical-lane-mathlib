import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.DynamicalSystemGeometricBackbone

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure HyperbolicSplittingPackage {D : DynamicalSystemPackage} (H : DynamicalSystemEvidence D) where
  tangentBundle : Type u
  stableSubbundle : Type v
  unstableSubbundle : Type w
  exponentialContraction : Prop
  exponentialExpansion : Prop
  invariantDecomposition : Prop
  dominatedSplitting : Prop
  exponentialContractionTerm : exponentialContraction
  exponentialExpansionTerm : exponentialExpansion
  invariantDecompositionTerm : invariantDecomposition
  dominatedSplittingTerm : dominatedSplitting

structure HyperbolicSplittingEvidence {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    (S : HyperbolicSplittingPackage H) where
  exponentialContractionClosed : S.exponentialContraction
  exponentialExpansionClosed : S.exponentialExpansion
  invariantDecompositionClosed : S.invariantDecomposition
  dominatedSplittingClosed : S.dominatedSplitting

def HyperbolicSplittingClosed {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    (S : HyperbolicSplittingPackage H) : Prop :=
  S.exponentialContraction ∧ S.exponentialExpansion ∧ S.invariantDecomposition ∧ S.dominatedSplitting

theorem hyperbolic_splitting_closed_from_evidence
    {D : DynamicalSystemPackage} {H : DynamicalSystemEvidence D}
    (S : HyperbolicSplittingPackage H) (E : HyperbolicSplittingEvidence S) : HyperbolicSplittingClosed S := by
  exact And.intro E.exponentialContractionClosed
    (And.intro E.exponentialExpansionClosed
      (And.intro E.invariantDecompositionClosed E.dominatedSplittingClosed))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse