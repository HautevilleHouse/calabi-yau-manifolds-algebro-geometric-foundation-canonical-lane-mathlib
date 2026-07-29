import CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean.ComplexMongeAmpere

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure KahlerCurvaturePackage where
  ricciCurvature : Prop
  ricciForm : Prop
  firstChernClassComputed : Prop

structure KahlerCurvatureEvidence (K : KahlerCurvaturePackage) where
  ricciCurvatureClosed : K.ricciCurvature
  ricciFormClosed : K.ricciForm
  firstChernClassComputedClosed : K.firstChernClassComputed

def KahlerCurvatureClosed (K : KahlerCurvaturePackage) : Prop :=
  K.ricciCurvature ∧ K.ricciForm ∧ K.firstChernClassComputed

theorem kahler_curvature_closed_from_evidence (K : KahlerCurvaturePackage)
    (E : KahlerCurvatureEvidence K) : KahlerCurvatureClosed K := by
  exact And.intro E.ricciCurvatureClosed
    (And.intro E.ricciFormClosed E.firstChernClassComputedClosed)

structure ExistencePackage (M : CalabiYauAdmittedObject) where
  aPrioriEstimates : Prop
  continuityMethod : Prop
  existenceResult : Prop

structure ExistenceEvidence {M : CalabiYauAdmittedObject} (E : ExistencePackage M) where
  aPrioriEstimatesClosed : E.aPrioriEstimates
  continuityMethodClosed : E.continuityMethod
  existenceResultClosed : E.existenceResult

def ExistenceClosed {M : CalabiYauAdmittedObject} (E : ExistencePackage M) : Prop :=
  E.aPrioriEstimates ∧ E.continuityMethod ∧ E.existenceResult

theorem existence_closed_from_evidence {M : CalabiYauAdmittedObject}
    (E : ExistencePackage M) (Ev : ExistenceEvidence E) : ExistenceClosed E := by
  exact And.intro Ev.aPrioriEstimatesClosed
    (And.intro Ev.continuityMethodClosed Ev.existenceResultClosed)

structure CalabiYauProofCertificate (M : CalabiYauAdmittedObject) where
  kahlerCurvature : KahlerCurvaturePackage
  kahlerCurvatureEvidence : KahlerCurvatureEvidence kahlerCurvature
  complexMongeAmpere : ComplexMongeAmperePackage M
  complexMongeAmpereEvidence : ComplexMongeAmpereEvidence complexMongeAmpere
  existence : ExistencePackage M
  existenceEvidence : ExistenceEvidence existence

def CalabiYauProofCertificateClosed (M : CalabiYauAdmittedObject)
    (C : CalabiYauProofCertificate M) : Prop :=
  KahlerCurvatureClosed C.kahlerCurvature ∧
  ComplexMongeAmpereClosed C.complexMongeAmpere ∧
  ExistenceClosed C.existence

theorem calabi_yau_proof_certificate_closed_from_evidence
    (M : CalabiYauAdmittedObject) (C : CalabiYauProofCertificate M) :
    CalabiYauProofCertificateClosed M C := by
  exact And.intro (kahler_curvature_closed_from_evidence C.kahlerCurvature C.kahlerCurvatureEvidence)
    (And.intro (complex_monge_ampere_closed_from_evidence C.complexMongeAmpere C.complexMongeAmpereEvidence)
      (existence_closed_from_evidence C.existence C.existenceEvidence))

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse