
@available(watchOS 4.0, *)
class INAccountTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedAccountType: INAccountType) -> Self
  class func confirmationRequired(with accountTypeToConfirm: INAccountType) -> Self
}
