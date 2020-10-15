
@available(watchOS 4.0, *)
class INDateSearchTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedDateSearchType: INDateSearchType) -> Self
  class func confirmationRequired(with dateSearchTypeToConfirm: INDateSearchType) -> Self
}
