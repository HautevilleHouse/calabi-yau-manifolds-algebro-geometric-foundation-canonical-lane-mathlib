import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

def ConstrainedCalabiYauClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem calabi_yau_endgame (A : AdmissibleClass) :
    ConstrainedCalabiYauClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse