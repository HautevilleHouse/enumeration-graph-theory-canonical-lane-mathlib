import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

def ConstrainedEnumerationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_enumeration_endgame (A : AdmissibleClass) :
    ConstrainedEnumerationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse