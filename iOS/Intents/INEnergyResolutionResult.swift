
@available(iOS 13.0, *)
class INEnergyResolutionResult : INIntentResolutionResult {
  class func success(with resolvedEnergy: Measurement<UnitEnergy>) -> Self
  class func disambiguation(with energyToDisambiguate: [Measurement<UnitEnergy>]) -> Self
  class func confirmationRequired(with energyToConfirm: Measurement<UnitEnergy>?) -> Self
}
