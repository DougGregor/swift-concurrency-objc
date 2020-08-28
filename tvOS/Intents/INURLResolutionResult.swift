
@available(tvOS 13.0, *)
class INURLResolutionResult : INIntentResolutionResult {
  class func success(with resolvedURL: URL) -> Self
  class func disambiguation(with urlsToDisambiguate: [URL]) -> Self
  class func confirmationRequired(with urlToConfirm: URL?) -> Self
}
