import EnumerationGraphTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure GraphFamily where
  vertexLabelSet : Type u
  edgeRelation : vertexLabelSet → vertexLabelSet → Prop
  finiteGraphs : Prop
  connectednessConstraint : Prop
  closureUnderIsomorphism : Prop

structure CountingFunction where
  inputSize : Type v
  count : inputSize → ℕ
  recursiveForm : Prop
  closedForm : Prop
  finiteSumRepresentation : Prop

structure CountingFunctionEvidence (C : CountingFunction) where
  recursiveFormClosed : C.recursiveForm
  closedFormClosed : C.closedForm
  finiteSumRepresentationClosed : C.finiteSumRepresentation

def CountingFunctionClosed (C : CountingFunction) : Prop :=
  C.recursiveForm ∧ C.closedForm ∧ C.finiteSumRepresentation

theorem counting_function_closed_from_evidence (C : CountingFunction) (E : CountingFunctionEvidence C) :
    CountingFunctionClosed C := by
  exact And.intro E.recursiveFormClosed (And.intro E.closedFormClosed E.finiteSumRepresentationClosed)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse