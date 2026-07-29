import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure PolyaEnumerationPattern where
  group : Type u
  cycleIndex : Type v
  weightFunction : Type w
  enumerationTheorem : Prop
  theoremTerm : enumerationTheorem

structure BurnsideLemmaPackage where
  groupAction : Type u
  orbits : Type v
  fixedPointSet : Type w
  lemmaApplied : Prop
  lemmaTerm : lemmaApplied

structure GroupActionEnumerationPackage where
  polya : PolyaEnumerationPattern
  burnside : BurnsideLemmaPackage
  relationship : Prop

structure GroupActionEnumerationEvidence (G : GroupActionEnumerationPackage) where
  polyaClosed : G.polya.enumerationTheorem
  burnsideClosed : G.burnside.lemmaApplied
  relationshipClosed : G.relationship

def GroupActionEnumerationClosed (G : GroupActionEnumerationPackage) : Prop :=
  G.polya.enumerationTheorem ∧ G.burnside.lemmaApplied ∧ G.relationship

theorem group_action_enumeration_closed_from_evidence (G : GroupActionEnumerationPackage)
    (E : GroupActionEnumerationEvidence G) : GroupActionEnumerationClosed G := by
  exact And.intro E.polyaClosed (And.intro E.burnsideClosed E.relationshipClosed)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse