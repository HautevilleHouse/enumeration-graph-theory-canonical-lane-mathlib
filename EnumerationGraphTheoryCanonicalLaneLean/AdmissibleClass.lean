import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure EnumerationAdmittedObject where
  graph : Type u
  vertexCount : Nat
  polynomial : String
  countsColorings : Prop
  conclusion : countsColorings

structure AdmissibleClass where
  object : EnumerationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse