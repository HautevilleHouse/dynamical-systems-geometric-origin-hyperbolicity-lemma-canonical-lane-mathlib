import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure LyapunovExponentPackage (M : Type) [TopologicalSpace M] where
  vectorField : Type
  flow : M → ℝ → M
  derivativeFlow : Type
  lyapunovExponent : M → VectorBundle → ℝ
  uniformHyperbolicity : Prop

structure LyapunovExponentEvidence (P : LyapunovExponentPackage M) where
  lyapunovExponentDefined : P.lyapunovExponent
  uniformHyperbolicityClosed : P.uniformHyperbolicity

def LyapunovExponentClosed (P : LyapunovExponentPackage M) : Prop :=
  P.uniformHyperbolicity

theorem lyapunov_exponent_closed_from_evidence (P : LyapunovExponentPackage M) (E : LyapunovExponentEvidence P) : LyapunovExponentClosed P := by
  exact E.uniformHyperbolicityClosed

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse