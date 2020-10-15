
@available(tvOS 14.0, *)
class INMediaAffinityTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMediaAffinityType: INMediaAffinityType) -> Self
  class func confirmationRequired(with mediaAffinityTypeToConfirm: INMediaAffinityType) -> Self
}
