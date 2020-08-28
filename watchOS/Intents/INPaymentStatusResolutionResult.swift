
@available(watchOS 3.2, *)
class INPaymentStatusResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPaymentStatus: INPaymentStatus) -> Self
  class func confirmationRequired(with paymentStatusToConfirm: INPaymentStatus) -> Self
}
