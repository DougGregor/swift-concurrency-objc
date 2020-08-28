
@available(iOS 10.3, *)
class INBillTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedBillType: INBillType) -> Self
  class func confirmationRequired(with billTypeToConfirm: INBillType) -> Self
}
