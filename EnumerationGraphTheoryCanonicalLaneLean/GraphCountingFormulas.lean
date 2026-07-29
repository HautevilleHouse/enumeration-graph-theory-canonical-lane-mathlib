import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.GraphEnumerationObjects

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure GraphCountingPackage (C : GraphEnumerationContext) where
  labeledCount : Prop
  unlabeledCount : Prop
  asymptotics : Prop
  labeledCountClosed : labeledCount
  unlabeledCountClosed : unlabeledCount
  asymptoticsClosed : asymptotics

def GraphCountingClosed (C : GraphEnumerationContext) (P : GraphCountingPackage C) : Prop :=
  P.labeledCount ∧ P.unlabeledCount ∧ P.asymptotics

theorem graph_counting_closed_from_evidence (C : GraphEnumerationContext) (P : GraphCountingPackage C) :
    GraphCountingClosed C P := by
  exact And.intro P.labeledCountClosed (And.intro P.unlabeledCountClosed P.asymptoticsClosed)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse