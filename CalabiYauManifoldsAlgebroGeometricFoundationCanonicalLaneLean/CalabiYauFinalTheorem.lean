import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.CalabiYauManifold

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure AdmissibleClass (A : Type) where
  object : A
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass CalabiYauAdmittedObject) : Prop :=
  CalabiYauWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass CalabiYauAdmittedObject) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass CalabiYauAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass CalabiYauAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedCalabiYauClosure (A : AdmissibleClass CalabiYauAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calabi_yau_endgame (A : AdmissibleClass CalabiYauAdmittedObject) :
    ConstrainedCalabiYauClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse