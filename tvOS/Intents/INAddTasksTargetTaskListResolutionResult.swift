
@available(tvOS 13.0, *)
enum INAddTasksTargetTaskListConfirmationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case listShouldBeCreated
}
@available(tvOS 13.0, *)
class INAddTasksTargetTaskListResolutionResult : INTaskListResolutionResult {
  class func confirmationRequired(with taskListToConfirm: INTaskList?, forReason reason: INAddTasksTargetTaskListConfirmationReason) -> Self
  init(taskListResolutionResult: INTaskListResolutionResult)
}
