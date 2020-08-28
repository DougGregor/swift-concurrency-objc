
@available(tvOS 10.0, *)
class INStringResolutionResult : INIntentResolutionResult {
  class func success(with resolvedString: String) -> Self
  class func disambiguation(with stringsToDisambiguate: [String]) -> Self
  class func confirmationRequired(with stringToConfirm: String?) -> Self
}
