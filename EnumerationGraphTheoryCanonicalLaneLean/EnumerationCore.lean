import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure GraphEnumerationPackage where
  graphType : Type
  countFunction : graphType → Nat
  generatingSeries : Prop
  asymptotics : Prop

structure GraphEnumerationEvidence (G : GraphEnumerationPackage) where
  countFunctionClosed : ∀ g, G.countFunction g ∈ ℕ
  generatingSeriesClosed : G.generatingSeries
  asymptoticsClosed : G.asymptotics

def GraphEnumerationClosed (G : GraphEnumerationPackage) : Prop :=
  G.generatingSeries ∧ G.asymptotics

theorem graph_enumeration_closed_from_evidence (G : GraphEnumerationPackage) 
    (E : GraphEnumerationEvidence G) : GraphEnumerationClosed G := by
  exact And.intro E.generatingSeriesClosed E.asymptoticsClosed

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse