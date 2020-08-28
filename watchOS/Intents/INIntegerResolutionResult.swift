
@available(watchOS 3.2, *)
class INIntegerResolutionResult : INIntentResolutionResult {
  class func success(with resolvedValue: Int) -> Self
  class func __confirmationRequiredWithValue(toConfirm valueToConfirm: NSNumber?) -> Self
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntegerResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Int?) -> Self
}
