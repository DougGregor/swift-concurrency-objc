
@available(watchOS 6.0, *)
class INCallCapabilityResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCallCapability: INCallCapability) -> Self
  class func confirmationRequired(with callCapabilityToConfirm: INCallCapability) -> Self
}
