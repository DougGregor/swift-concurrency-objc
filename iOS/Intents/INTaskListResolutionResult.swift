
@available(iOS 11.0, *)
class INTaskListResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTaskList: INTaskList) -> Self
  class func disambiguation(with taskListsToDisambiguate: [INTaskList]) -> Self
  class func confirmationRequired(with taskListToConfirm: INTaskList?) -> Self
}
