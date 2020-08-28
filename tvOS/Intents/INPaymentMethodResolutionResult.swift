
@available(tvOS 13.0, *)
class INPaymentMethodResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPaymentMethod: INPaymentMethod) -> Self
  class func disambiguation(with paymentMethodsToDisambiguate: [INPaymentMethod]) -> Self
  class func confirmationRequired(with paymentMethodToConfirm: INPaymentMethod?) -> Self
}
