import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure PesinEntropyPackage (M : Type) [TopologicalSpace M] where
  invariantMeasure : Type
  lyapunovExponents : M → List ℝ
  metricEntropy : ℝ
  entropyFormula : Prop
  positivityCondition : Prop

structure PesinEntropyEvidence (P : PesinEntropyPackage M) where
  entropyFormulaClosed : P.entropyFormula
  positivityConditionClosed : P.positivityCondition

def PesinEntropyClosed (P : PesinEntropyPackage M) : Prop :=
  P.entropyFormula ∧ P.positivityCondition

theorem pesin_entropy_closed_from_evidence (P : PesinEntropyPackage M) (E : PesinEntropyEvidence P) : PesinEntropyClosed P := by
  exact And.intro E.entropyFormulaClosed E.positivityConditionClosed

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse