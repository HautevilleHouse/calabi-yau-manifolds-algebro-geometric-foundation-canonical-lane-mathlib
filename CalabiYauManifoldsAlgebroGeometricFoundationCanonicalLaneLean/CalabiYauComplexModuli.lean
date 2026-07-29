import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean

structure ComplexModuliPackage {K : KahlerPackage} {R : RicciFlatMetricPackage K} where
  moduliSpace : Type u
  complexStructureDeformations : Prop
  hodgeStructure : Prop
  periodMapping : Prop
  complexStructureDeformationsTerm : complexStructureDeformations
  hodgeStructureTerm : hodgeStructure
  periodMappingTerm : periodMapping

structure ComplexModuliEvidence {K : KahlerPackage} {R : RicciFlatMetricPackage K} (M : ComplexModuliPackage K R) where
  complexStructureDeformationsClosed : M.complexStructureDeformations
  hodgeStructureClosed : M.hodgeStructure
  periodMappingClosed : M.periodMapping

def ComplexModuliClosed {K : KahlerPackage} {R : RicciFlatMetricPackage K} (M : ComplexModuliPackage K R) : Prop :=
  M.complexStructureDeformations ∧ M.hodgeStructure ∧ M.periodMapping

theorem complex_moduli_closed_from_evidence {K : KahlerPackage} {R : RicciFlatMetricPackage K} (M : ComplexModuliPackage K R) (E : ComplexModuliEvidence M) : ComplexModuliClosed M :=
  And.intro E.complexStructureDeformationsClosed (And.intro E.hodgeStructureClosed E.periodMappingClosed)

end CalabiYauManifoldsAlgebroGeometricFoundationCanonicalLaneLean
end HautevilleHouse