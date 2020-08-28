
@available(macOS 11.0, *)
class INLengthResolutionResult : INIntentResolutionResult {
  class func success(with resolvedLength: Measurement<UnitLength>) -> Self
  class func disambiguation(with lengthsToDisambiguate: [Measurement<UnitLength>]) -> Self
  class func confirmationRequired(with lengthToConfirm: Measurement<UnitLength>?) -> Self
}
