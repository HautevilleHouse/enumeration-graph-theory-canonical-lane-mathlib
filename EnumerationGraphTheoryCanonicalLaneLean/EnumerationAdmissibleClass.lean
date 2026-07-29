import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.GraphEnumerationObjects

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : GraphEnumerationContext
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  graphEnumerationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse