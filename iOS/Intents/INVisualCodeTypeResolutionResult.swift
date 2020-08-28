
@available(iOS 11.0, *)
class INVisualCodeTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedVisualCodeType: INVisualCodeType) -> Self
  class func confirmationRequired(with visualCodeTypeToConfirm: INVisualCodeType) -> Self
}
