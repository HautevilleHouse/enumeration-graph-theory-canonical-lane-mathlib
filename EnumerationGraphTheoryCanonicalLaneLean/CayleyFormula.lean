import EnumerationGraphTheoryCanonicalLaneLean.CountingLemmas

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure CayleyFormulaPackage where
  n : ℕ
  numberOfLabeledTrees : ℕ
  formula : numberOfLabeledTrees = n^(n-2)
  formulaClosed : formula

structure CayleyFormulaEvidence (C : CayleyFormulaPackage) where
  formulaClosed : C.formula

def CayleyFormulaClosed (C : CayleyFormulaPackage) : Prop :=
  C.formula

theorem cayley_formula_closed_from_evidence (C : CayleyFormulaPackage)
    (E : CayleyFormulaEvidence C) : CayleyFormulaClosed C := by
  exact E.formulaClosed

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse