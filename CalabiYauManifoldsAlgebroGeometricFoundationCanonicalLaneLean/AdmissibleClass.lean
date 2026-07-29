import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CalabiYauAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalabiYauWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse