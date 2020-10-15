
@available(macOS 11.0, *)
class INSpeedResolutionResult : INIntentResolutionResult {
  class func success(with resolvedSpeed: Measurement<UnitSpeed>) -> Self
  class func disambiguation(with speedToDisambiguate: [Measurement<UnitSpeed>]) -> Self
  class func confirmationRequired(with speedToConfirm: Measurement<UnitSpeed>?) -> Self
}
