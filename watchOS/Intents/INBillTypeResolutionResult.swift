
@available(watchOS 3.2, *)
class INBillTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedBillType: INBillType) -> Self
  class func confirmationRequired(with billTypeToConfirm: INBillType) -> Self
}
