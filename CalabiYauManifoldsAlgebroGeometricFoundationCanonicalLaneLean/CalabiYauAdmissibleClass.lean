import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure CYAdmittedObject where
  manifold : Type u
  complexStructure : Type v
  kaehlerMetric : Type w
  ricciFlatMetric : Type x
  trivialCanonicalBundle : Prop
  chernClassesVanishing : Prop
  conclusion : trivialCanonicalBundle ∧ chernClassesVanishing

structure CalabiYauAdmissibleClass where
  object : CYAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CalabiYauAdmissibleClass) : Prop :=
  (A.object.trivialCanonicalBundle ∧ A.object.chernClassesVanishing) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse