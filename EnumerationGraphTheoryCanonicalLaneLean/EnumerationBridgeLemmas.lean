import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.EnumerationAdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  graphEnumerationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.enumerationFormula

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse