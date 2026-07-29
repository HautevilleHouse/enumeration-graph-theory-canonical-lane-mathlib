import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse