import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.CalabiYauManifold

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure HolonomyPackage {K : KahlerPackage} (C : CalabiYauPackage K) where
  holonomyGroup : Type u
  holonomySubgroupOfSU : Prop
  riemannianHolonomyReduced : Prop
  parallelSpinorsExist : Prop

structure HolonomyEvidence {K : KahlerPackage} {C : CalabiYauPackage K} (H : HolonomyPackage C) where
  holonomySubgroupOfSUClosed : H.holonomySubgroupOfSU
  riemannianHolonomyReducedClosed : H.riemannianHolonomyReduced
  parallelSpinorsExistClosed : H.parallelSpinorsExist

def HolonomyClosed {K : KahlerPackage} {C : CalabiYauPackage K} (H : HolonomyPackage C) : Prop :=
  H.holonomySubgroupOfSU ∧ H.riemannianHolonomyReduced ∧ H.parallelSpinorsExist

theorem holonomy_closed_from_evidence {K : KahlerPackage} {C : CalabiYauPackage K} (H : HolonomyPackage C) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomySubgroupOfSUClosed (And.intro E.riemannianHolonomyReducedClosed E.parallelSpinorsExistClosed)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse