
@available(tvOS 11.0, *)
class INTaskResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTask: INTask) -> Self
  class func disambiguation(with tasksToDisambiguate: [INTask]) -> Self
  class func confirmationRequired(with taskToConfirm: INTask?) -> Self
}
