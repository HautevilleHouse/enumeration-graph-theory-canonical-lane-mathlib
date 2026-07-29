import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse