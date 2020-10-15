
@available(watchOS 4.0, *)
class INTaskStatusResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTaskStatus: INTaskStatus) -> Self
  class func confirmationRequired(with taskStatusToConfirm: INTaskStatus) -> Self
}
