
@available(watchOS 6.0, *)
class INEnumResolutionResult : INIntentResolutionResult {
  class func __success(withResolvedValue resolvedValue: Int) -> Self
  class func __confirmationRequiredWithValue(toConfirm valueToConfirm: Int) -> Self
}
