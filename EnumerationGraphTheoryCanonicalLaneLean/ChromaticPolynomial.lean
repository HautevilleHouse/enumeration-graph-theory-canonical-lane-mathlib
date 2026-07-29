import EnumerationGraphTheoryCanonicalLaneLean.CountingLemmas

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure ChromaticPolynomialPackage (G : Graph) where
  k : ℕ
  chromaticPoly : Polynomial ℤ
  evaluationCount : ProperColorings G k = chromaticPoly.eval (k : ℤ)
  evaluationClosed : evaluationCount

structure ChromaticPolynomialEvidence {G : Graph}
    (C : ChromaticPolynomialPackage G) where
  evaluationClosed : C.evaluationCount

def ChromaticPolynomialClosed {G : Graph}
    (C : ChromaticPolynomialPackage G) : Prop :=
  C.evaluationCount

theorem chromatic_polynomial_closed_from_evidence {G : Graph}
    (C : ChromaticPolynomialPackage G)
    (E : ChromaticPolynomialEvidence C) : ChromaticPolynomialClosed C := by
  exact E.evaluationClosed

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse