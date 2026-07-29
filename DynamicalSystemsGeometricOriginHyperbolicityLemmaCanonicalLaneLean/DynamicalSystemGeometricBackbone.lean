import DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean

structure DynamicalSystemPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  flow : Type v
  flowContinuous : Prop
  invariantSet : Prop
  hyperbolicStructure : Prop
  geometricOrigin : Prop
  smoothStructureTerm : smoothStructure
  flowContinuousTerm : flowContinuous
  invariantSetTerm : invariantSet
  hyperbolicStructureTerm : hyperbolicStructure
  geometricOriginTerm : geometricOrigin

structure DynamicalSystemEvidence (D : DynamicalSystemPackage) where
  smoothStructureClosed : D.smoothStructure
  flowContinuousClosed : D.flowContinuous
  invariantSetClosed : D.invariantSet
  hyperbolicStructureClosed : D.hyperbolicStructure
  geometricOriginClosed : D.geometricOrigin

def DynamicalSystemClosed (D : DynamicalSystemPackage) : Prop :=
  D.smoothStructure ∧ D.flowContinuous ∧ D.invariantSet ∧ D.hyperbolicStructure ∧ D.geometricOrigin

theorem dynamical_system_closed_from_evidence (D : DynamicalSystemPackage) (E : DynamicalSystemEvidence D) :
    DynamicalSystemClosed D := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.flowContinuousClosed
      (And.intro E.invariantSetClosed
        (And.intro E.hyperbolicStructureClosed E.geometricOriginClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityLemmaCanonicalLaneLean
end HautevilleHouse