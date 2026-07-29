import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure OrdinaryGeneratingFunction where
  sequence : ℕ → ℕ
  powerSeries : Type u
  closedForm : Prop
  closedFormTerm : closedForm

structure ExponentialGeneratingFunction where
  sequence : ℕ → ℕ
  exponentialSeries : Type u
  closedForm : Prop
  closedFormTerm : closedForm

structure CountingSeriesPackage where
  ordinary : OrdinaryGeneratingFunction
  exponential : ExponentialGeneratingFunction
  relationship : Prop

structure CountingSeriesEvidence (C : CountingSeriesPackage) where
  ordinaryClosed : C.ordinary.closedForm
  exponentialClosed : C.exponential.closedForm
  relationshipClosed : C.relationship

def CountingSeriesClosed (C : CountingSeriesPackage) : Prop :=
  C.ordinary.closedForm ∧ C.exponential.closedForm ∧ C.relationship

theorem counting_series_closed_from_evidence (C : CountingSeriesPackage) (E : CountingSeriesEvidence C) :
    CountingSeriesClosed C := by
  exact And.intro E.ordinaryClosed (And.intro E.exponentialClosed E.relationshipClosed)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse