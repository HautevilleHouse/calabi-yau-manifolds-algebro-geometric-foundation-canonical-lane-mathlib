import CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.CalabiYauAdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure HodgePackage (A : CalabiYauAdmissibleClass) where
  hodgeDiamond : Prop
  hodgeNumbersDefined : Prop
  hodgeDecomposition : Prop
  hodgeSymmetry : Prop

structure HodgeEvidence (A : CalabiYauAdmissibleClass) (H : HodgePackage A) where
  hodgeDiamondClosed : H.hodgeDiamond
  hodgeNumbersDefinedClosed : H.hodgeNumbersDefined
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeSymmetryClosed : H.hodgeSymmetry

def HodgeClosed (H : HodgePackage A) : Prop :=
  H.hodgeDiamond ∧ H.hodgeNumbersDefined ∧ H.hodgeDecomposition ∧ H.hodgeSymmetry

theorem hodge_closed_from_evidence (H : HodgePackage A) (E : HodgeEvidence A H) : HodgeClosed H := by
  exact And.intro E.hodgeDiamondClosed (And.intro E.hodgeNumbersDefinedClosed (And.intro E.hodgeDecompositionClosed E.hodgeSymmetryClosed))

structure CanonicalBundlePackage (A : CalabiYauAdmissibleClass) where
  canonicalBundleTrivial : Prop
  sectionNonzero : Prop
  vanishingChernClass : Prop

structure CanonicalBundleEvidence (A : CalabiYauAdmissibleClass) (C : CanonicalBundlePackage A) where
  canonicalBundleTrivialClosed : C.canonicalBundleTrivial
  sectionNonzeroClosed : C.sectionNonzero
  vanishingChernClassClosed : C.vanishingChernClass

def CanonicalBundleClosed (C : CanonicalBundlePackage A) : Prop :=
  C.canonicalBundleTrivial ∧ C.sectionNonzero ∧ C.vanishingChernClass

theorem canonical_bundle_closed_from_evidence (C : CanonicalBundlePackage A) (E : CanonicalBundleEvidence A C) : CanonicalBundleClosed C := by
  exact And.intro E.canonicalBundleTrivialClosed (And.intro E.sectionNonzeroClosed E.vanishingChernClassClosed)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse