
@available(watchOS 4.0, *)
class INLocationSearchTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedLocationSearchType: INLocationSearchType) -> Self
  class func confirmationRequired(with locationSearchTypeToConfirm: INLocationSearchType) -> Self
}
