
@available(watchOS 6.0, *)
class INMediaAffinityTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMediaAffinityType: INMediaAffinityType) -> Self
  class func confirmationRequired(with mediaAffinityTypeToConfirm: INMediaAffinityType) -> Self
}
