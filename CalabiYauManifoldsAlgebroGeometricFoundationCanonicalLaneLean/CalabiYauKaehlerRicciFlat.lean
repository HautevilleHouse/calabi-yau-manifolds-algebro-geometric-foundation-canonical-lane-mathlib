import CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.CalabiYauAdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure KaehlerPackage (A : CalYauAdmissibleClass) where
  complexManifold : Type u
  kaehlerForm : Type v
  symplectic : Prop
  integrableComplexStructure : Prop
  kaehlerMetric : Prop

structure KaehlerEvidence (A : CalabiYauAdmissibleClass) (K : KaehlerPackage A) where
  symplecticClosed : K.symplectic
  integrableComplexStructureClosed : K.integrableComplexStructure
  kaehlerMetricClosed : K.kaehlerMetric

def KaehlerClosed (K : KaehlerPackage A) : Prop :=
  K.symplectic ∧ K.integrableComplexStructure ∧ K.kaehlerMetric

theorem kaehler_closed_from_evidence (K : KaehlerPackage A) (E : KaehlerEvidence A K) : KaehlerClosed K := by
  exact And.intro E.symplecticClosed (And.intro E.integrableComplexStructureClosed E.kaehlerMetricClosed)

structure RicciFlatPackage (A : CalabiYauAdmissibleClass) (K : KaehlerPackage A) where
  ricciTensorZero : Prop
  calabiExistence : Prop
  uniqueness : Prop

structure RicciFlatEvidence (A : CalabiYauAdmissibleClass) (K : KaehlerPackage A) (R : RicciFlatPackage A K) where
  ricciTensorZeroClosed : R.ricciTensorZero
  calabiExistenceClosed : R.calabiExistence
  uniquenessClosed : R.uniqueness

def RicciFlatClosed (R : RicciFlatPackage A K) : Prop :=
  R.ricciTensorZero ∧ R.calabiExistence ∧ R.uniqueness

theorem ricci_flat_closed_from_evidence (R : RicciFlatPackage A K) (E : RicciFlatEvidence A K R) : RicciFlatClosed R := by
  exact And.intro E.ricciTensorZeroClosed (And.intro E.calabiExistenceClosed E.uniquenessClosed)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse