import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure ModuliSpacePackage where
  deformationComplex : Type u
  unobstructedDeformations : Prop
  tangentSpaceDimension : Prop
  kuranishiMapNonSingular : Prop

structure ModuliEvidence (M : ModuliSpacePackage) where
  unobstructedDeformationsClosed : M.unobstructedDeformations
  tangentSpaceDimensionClosed : M.tangentSpaceDimension
  kuranishiMapNonSingularClosed : M.kuranishiMapNonSingular

def ModuliClosed (M : ModuliSpacePackage) : Prop :=
  M.unobstructedDeformations ∧ M.tangentSpaceDimension ∧ M.kuranishiMapNonSingular

theorem moduli_closed_from_evidence (M : ModuliSpacePackage) (E : ModuliEvidence M) : ModuliClosed M := by
  exact And.intro E.unobstructedDeformationsClosed (And.intro E.tangentSpaceDimensionClosed E.kuranishiMapNonSingularClosed)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse