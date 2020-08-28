
@available(watchOS 3.2, *)
class INDateComponentsResolutionResult : INIntentResolutionResult {
  class func success(with resolvedDateComponents: DateComponents) -> Self
  class func disambiguation(with dateComponentsToDisambiguate: [DateComponents]) -> Self
  class func confirmationRequired(with dateComponentsToConfirm: DateComponents?) -> Self
}
