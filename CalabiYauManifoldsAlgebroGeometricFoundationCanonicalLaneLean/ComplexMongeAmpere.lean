import CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.CalabiYauObjects

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure ComplexMongeAmperePackage (M : CalabiYauAdmittedObject) where
  volumeForm : M.space.carrier → ℝ
  metricDeterminant : M.space.carrier → ℝ
  mongeAmpereEquation : Prop
  solutionExists : Prop

structure ComplexMongeAmpereEvidence {M : CalabiYauAdmittedObject}
    (P : ComplexMongeAmperePackage M) where
  mongeAmpereEquationClosed : P.mongeAmpereEquation
  solutionExistsClosed : P.solutionExists

def ComplexMongeAmpereClosed {M : CalabiYauAdmittedObject}
    (P : ComplexMongeAmperePackage M) : Prop :=
  P.mongeAmpereEquation ∧ P.solutionExists

theorem complex_monge_ampere_closed_from_evidence
    {M : CalabiYauAdmittedObject} (P : ComplexMongeAmperePackage M)
    (E : ComplexMongeAmpereEvidence P) : ComplexMongeAmpereClosed P := by
  exact And.intro E.mongeAmpereEquationClosed E.solutionExistsClosed

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse