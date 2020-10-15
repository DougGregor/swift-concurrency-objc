
@available(iOS 10.3, *)
class INBillPayeeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedBillPayee: INBillPayee) -> Self
  class func disambiguation(with billPayeesToDisambiguate: [INBillPayee]) -> Self
  class func confirmationRequired(with billPayeeToConfirm: INBillPayee?) -> Self
}
