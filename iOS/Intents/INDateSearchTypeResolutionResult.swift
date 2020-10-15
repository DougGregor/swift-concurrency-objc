
@available(iOS 11.0, *)
class INDateSearchTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedDateSearchType: INDateSearchType) -> Self
  class func confirmationRequired(with dateSearchTypeToConfirm: INDateSearchType) -> Self
}
