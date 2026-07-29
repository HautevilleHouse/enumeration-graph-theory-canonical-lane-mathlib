import EnumerationGraphTheoryCanonicalLaneLean.GeneratingFunction

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure AsymptoticEstimate where
  dominantSingularity : Type u
  exponentialGrowthRate : Type v
  subexponentialFactor : Prop
  limitLaw : Prop
  uniformConvergenceRegion : Prop

structure AsymptoticEstimateEvidence (A : AsymptoticEstimate) where
  subexponentialFactorClosed : A.subexponentialFactor
  limitLawClosed : A.limitLaw
  uniformConvergenceRegionClosed : A.uniformConvergenceRegion

def AsymptoticEstimateClosed (A : AsymptoticEstimate) : Prop :=
  A.subexponentialFactor ∧ A.limitLaw ∧ A.uniformConvergenceRegion

theorem asymptotic_estimate_closed_from_evidence (A : AsymptoticEstimate) (E : AsymptoticEstimateEvidence A) :
    AsymptoticEstimateClosed A := by
  exact And.intro E.subexponentialFactorClosed (And.intro E.limitLawClosed E.uniformConvergenceRegionClosed)

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse