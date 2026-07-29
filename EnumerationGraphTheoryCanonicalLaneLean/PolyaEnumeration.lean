import canonicalLaneMathlib.AdmissibleClass
import EnumerationGraphTheoryCanonicalLaneLean.GeneratingFunction

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure PolyaEnumerationPackage {G : GraphEnumerationPackage}
    {F : GeneratingFunctionPackage G} where
  cycleIndexPolynomial : Prop
  colorCount : ℕ
  enumerationFormula : Prop
  asymptoticFormula : Prop

structure PolyaEnumerationEvidence {G : GraphEnumerationPackage}
    {F : GeneratingFunctionPackage G} 
    (P : PolyaEnumerationPackage G F) where
  cycleIndexPolynomialClosed : P.cycleIndexPolynomial
  enumerationFormulaClosed : P.enumerationFormula
  asymptoticFormulaClosed : P.asymptoticFormula

def PolyaEnumerationClosed {G : GraphEnumerationPackage}
    {F : GeneratingFunctionPackage G} 
    (P : PolyaEnumerationPackage G F) : Prop :=
  P.enumerationFormula ∧ P.asymptoticFormula

theorem polya_enumeration_closed_from_evidence {G : GraphEnumerationPackage}
    {F : GeneratingFunctionPackage G} 
    (P : PolyaEnumerationPackage G F) (E : PolyaEnumerationEvidence P) :
    PolyaEnumerationClosed P := by
  exact And.intro E.enumerationFormulaClosed E.asymptoticFormulaClosed

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse