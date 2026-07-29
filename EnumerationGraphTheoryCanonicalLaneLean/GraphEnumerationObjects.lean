import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure GraphEnumerationContext where
  graphClass : Type
  enumerationFormula : Prop
  generatingFunction : Type

def graphEnumerationClosed (C : GraphEnumerationContext) : Prop :=
  C.enumerationFormula

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse