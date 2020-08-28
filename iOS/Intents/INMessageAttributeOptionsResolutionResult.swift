
@available(iOS 10.0, *)
class INMessageAttributeOptionsResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMessageAttributeOptions: INMessageAttributeOptions = []) -> Self
  class func confirmationRequired(with messageAttributeOptionsToConfirm: INMessageAttributeOptions = []) -> Self
}
