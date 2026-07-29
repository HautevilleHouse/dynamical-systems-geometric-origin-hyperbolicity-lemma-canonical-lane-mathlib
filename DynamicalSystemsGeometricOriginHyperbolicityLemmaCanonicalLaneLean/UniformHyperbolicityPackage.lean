import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.HyperbolicAdmittedObject

/-!
# Uniform Hyperbolicity Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure UniformHyperbolicityPackage (O : HyperbolicAdmittedObject) where
  splittingContinuity : Prop
  contractionExpansion : Prop
  coneFieldExists : Prop
  invariantSplitting : Prop

structure UniformHyperbolicityEvidence (O : HyperbolicAdmittedObject) (P : UniformHyperbolicityPackage O) where
  splittingContinuityClosed : P.splittingContinuity
  contractionExpansionClosed : P.contractionExpansion
  coneFieldExistsClosed : P.coneFieldExists
  invariantSplittingClosed : P.invariantSplitting

def UniformHyperbolicityClosed (O : HyperbolicAdmittedObject) (P : UniformHyperbolicityPackage O) : Prop :=
  P.splittingContinuity ∧ P.contractionExpansion ∧ P.coneFieldExists ∧ P.invariantSplitting

theorem uniform_hyperbolicity_closed_from_evidence (O : HyperbolicAdmittedObject)
    (P : UniformHyperbolicityPackage O) (E : UniformHyperbolicityEvidence O P) :
    UniformHyperbolicityClosed O P := by
  exact And.intro E.splittingContinuityClosed
    (And.intro E.contractionExpansionClosed
      (And.intro E.coneFieldExistsClosed E.invariantSplittingClosed))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse