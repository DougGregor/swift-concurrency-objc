
@available(iOS 10.0, *)
class INMessageAttributeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMessageAttribute: INMessageAttribute) -> Self
  class func confirmationRequired(with messageAttributeToConfirm: INMessageAttribute) -> Self
}
