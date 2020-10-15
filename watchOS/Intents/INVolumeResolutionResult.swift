
@available(watchOS 6.0, *)
class INVolumeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedVolume: Measurement<UnitVolume>) -> Self
  class func disambiguation(with volumeToDisambiguate: [Measurement<UnitVolume>]) -> Self
  class func confirmationRequired(with volumeToConfirm: Measurement<UnitVolume>?) -> Self
}
