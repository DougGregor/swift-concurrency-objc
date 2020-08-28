
@available(tvOS 13.0, *)
class INTimeIntervalResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTimeInterval: TimeInterval) -> Self
  class func confirmationRequired(with timeIntervalToConfirm: TimeInterval) -> Self
}
