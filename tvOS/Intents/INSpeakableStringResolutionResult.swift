
@available(tvOS 10.0, *)
class INSpeakableStringResolutionResult : INIntentResolutionResult {
  class func success(with resolvedString: INSpeakableString) -> Self
  class func disambiguation(with stringsToDisambiguate: [INSpeakableString]) -> Self
  class func confirmationRequired(with stringToConfirm: INSpeakableString?) -> Self
}
