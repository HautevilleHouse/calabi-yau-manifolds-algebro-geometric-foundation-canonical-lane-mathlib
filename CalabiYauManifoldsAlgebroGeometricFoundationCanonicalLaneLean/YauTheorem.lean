import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.HolonomyStructure

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure YauTheoremPackage {K : KahlerPackage} {C : CalabiYauPackage K} {H : HolonomyPackage C} where
  ricciFlatMetricExists : Prop
  kahlerEinsteinConditionHolds : Prop
  uniquenessUpToBiholomorphism : Prop

structure YauTheoremEvidence {K : KahlerPackage} {C : CalabiYauPackage K} {H : HolonomyPackage C} (Y : YauTheoremPackage) where
  ricciFlatMetricExistsClosed : Y.ricciFlatMetricExists
  kahlerEinsteinConditionHoldsClosed : Y.kahlerEinsteinConditionHolds
  uniquenessUpToBiholomorphismClosed : Y.uniquenessUpToBiholomorphism

def YauTheoremClosed {K : KahlerPackage} {C : CalabiYauPackage K} {H : HolonomyPackage C} (Y : YauTheoremPackage) : Prop :=
  Y.ricciFlatMetricExists ∧ Y.kahlerEinsteinConditionHolds ∧ Y.uniquenessUpToBiholomorphism

theorem yau_theorem_closed_from_evidence {K : KahlerPackage} {C : CalabiYauPackage K} {H : HolonomyPackage C} (Y : YauTheoremPackage) (E : YauTheoremEvidence Y) : YauTheoremClosed Y := by
  exact And.intro E.ricciFlatMetricExistsClosed (And.intro E.kahlerEinsteinConditionHoldsClosed E.uniquenessUpToBiholomorphismClosed)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse