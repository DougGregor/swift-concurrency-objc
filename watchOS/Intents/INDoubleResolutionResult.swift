
@available(watchOS 3.2, *)
class INDoubleResolutionResult : INIntentResolutionResult {
  class func success(with resolvedValue: Double) -> Self
  class func __confirmationRequiredWithValue(toConfirm valueToConfirm: NSNumber?) -> Self
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INDoubleResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Double?) -> Self
}
