import EnumerationGraphTheoryCanonicalLaneLean.GraphEnumerationCore

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure GeneratingFunction where
  formalVariable : Type u
  seriesExpansion : Type v
  differentialEquation : Prop
  closedForm : Prop
  algebraicCharacter : Prop

structure GeneratingFunctionEvidence (G : GeneratingFunction) where
  differentialEquationClosed : G.differentialEquation
  closedFormClosed : G.closedForm
  algebraicCharacterClosed : G.algebraicCharacter

def GeneratingFunctionClosed (G : GeneratingFunction) : Prop :=
  G.differentialEquation ∧ G.closedForm ∧ G.algebraicCharacter

theorem generating_function_closed_from_evidence (G : GeneratingFunction) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.differentialEquationClosed (And.intro E.closedFormClosed E.algebraicCharacterClosed)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse