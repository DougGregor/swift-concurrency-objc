
@available(watchOS 3.2, *)
class INPaymentAmountResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPaymentAmount: INPaymentAmount) -> Self
  class func disambiguation(with paymentAmountsToDisambiguate: [INPaymentAmount]) -> Self
  class func confirmationRequired(with paymentAmountToConfirm: INPaymentAmount?) -> Self
}
