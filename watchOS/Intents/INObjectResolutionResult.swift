
@available(watchOS 6.0, *)
class INObjectResolutionResult : INIntentResolutionResult {
  class func success(with resolvedObject: INObject) -> Self
  class func disambiguation(with objectsToDisambiguate: [INObject]) -> Self
  class func confirmationRequired(with objectToConfirm: INObject?) -> Self
}
