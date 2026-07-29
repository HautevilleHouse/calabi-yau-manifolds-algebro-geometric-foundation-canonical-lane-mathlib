import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure CalabiYauManifold where
  complexDimension : Nat
  complexStructure : Type u
  kaehlerMetric : Type v
  ricciFlat : Prop
  firstChernClassZero : Prop
  holonomySpecial : Prop

structure CalabiYauAdmittedObject where
  manifold : CalabiYauManifold
  compact : Prop
  ricciFlatProof : Prop
  firstChernClassZeroProof : Prop
  conclusion : ricciFlatProof ∧ firstChernClassZeroProof

def CalabiYauWitnessClosed (O : CalabiYauAdmittedObject) : Prop :=
  O.conclusion

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse