
@available(iOS 10.0, *)
class INRadioTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedRadioType: INRadioType) -> Self
  class func confirmationRequired(with radioTypeToConfirm: INRadioType) -> Self
}
