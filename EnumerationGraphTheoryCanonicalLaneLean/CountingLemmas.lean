import EnumerationGraphTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure EnumerationAdmittedObject where
  label : String
  count : ℕ
  conclusion : count > 0

def EnumerationWitnessClosed (O : EnumerationAdmittedObject) : Prop :=
  O.conclusion

structure Graph where
  vertices : ℕ
  edges : ℕ

def ProperColorings (G : Graph) (k : ℕ) : ℕ := k * (k-1) * (k-2) -- stub

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse