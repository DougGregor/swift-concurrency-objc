
@available(watchOS 3.2, *)
class INMessageAttributeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMessageAttribute: INMessageAttribute) -> Self
  class func confirmationRequired(with messageAttributeToConfirm: INMessageAttribute) -> Self
}
