import HautevilleHouse.EnumerationGraphTheoryCanonicalLaneLean.GraphCountingFormulas

namespace HautevilleHouse
namespace EnumerationGraphTheoryCanonicalLaneLean

structure GraphEnumerationBridgePackage {C : GraphEnumerationContext} (P : GraphCountingPackage C) where
  bridgeFormula : Prop
  bridgeVerified : bridgeFormula

def GraphEnumerationBridgeClosed {C : GraphEnumerationContext} {P : GraphCountingPackage C} (B : GraphEnumerationBridgePackage P) : Prop :=
  B.bridgeFormula

theorem graph_enumeration_bridge_closed_from_evidence {C : GraphEnumerationContext} {P : GraphCountingPackage C} (B : GraphEnumerationBridgePackage P) :
    GraphEnumerationBridgeClosed B := by
  exact B.bridgeVerified

end EnumerationGraphTheoryCanonicalLaneLean
end HautevilleHouse