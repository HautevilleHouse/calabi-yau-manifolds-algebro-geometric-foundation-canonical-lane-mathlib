import CanonicalLaneMathlibCore
import Mathlib.Geometry.Manifold.Complex.Kahler

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CalabiYauSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  kahlerMetric : KahlerMetric carrier

structure CalabiYauAdmittedObject where
  space : CalabiYauSpace
  compactKahler : Prop
  firstChernClassZero : Prop
  ricciFlatMetricExists : Prop
  conclusion : ricciFlatMetricExists

structure CalabiYauEndgameState where
  object : CalabiYauAdmittedObject

def CalabiYauWitnessClosed (O : CalabiYauAdmittedObject) : Prop :=
  O.ricciFlatMetricExists

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse