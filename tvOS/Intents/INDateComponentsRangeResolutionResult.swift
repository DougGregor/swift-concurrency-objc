
@available(tvOS 10.0, *)
class INDateComponentsRangeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedDateComponentsRange: INDateComponentsRange) -> Self
  class func disambiguation(with dateComponentsRangesToDisambiguate: [INDateComponentsRange]) -> Self
  class func confirmationRequired(with dateComponentsRangeToConfirm: INDateComponentsRange?) -> Self
}
