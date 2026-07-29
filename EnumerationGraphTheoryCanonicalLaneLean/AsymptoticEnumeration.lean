import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure AsymptoticEstimate where
  function : ℕ → ℕ
  growthRate : ℕ → ℝ
  leadingTerm : ℝ
  errorTerm : ℝ → ℝ
  estimateValid : Prop

structure AsymptoticEnumerationPackage where
  graphFamily : Type u
  countAsymptotic : AsymptoticEstimate

structure AsymptoticEnumerationEvidence (A : AsymptoticEnumerationPackage) where
  estimateValidClosed : A.countAsymptotic.estimateValid

def AsymptoticEnumerationClosed (A : AsymptoticEnumerationPackage) : Prop :=
  A.countAsymptotic.estimateValid

theorem asymptotic_enumeration_closed_from_evidence (A : AsymptoticEnumerationPackage)
    (E : AsymptoticEnumerationEvidence A) : AsymptoticEnumerationClosed A := by
  exact E.estimateValidClosed

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse