import CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.CalabiYauAdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

def bridgeClosed (A : CalabiYauAdmissibleClass) : Prop :=
  A.object.trivialCanonicalBundle ∧ A.object.chernClassesVanishing

theorem bridge_from_admissible_class (A : CalabiYauAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : CalabiYauAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CalabiYauAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse