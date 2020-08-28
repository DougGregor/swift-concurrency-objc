
@available(watchOS 6.0, *)
enum INAddTasksTargetTaskListConfirmationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case listShouldBeCreated
}
@available(watchOS 6.0, *)
class INAddTasksTargetTaskListResolutionResult : INTaskListResolutionResult {
  class func confirmationRequired(with taskListToConfirm: INTaskList?, forReason reason: INAddTasksTargetTaskListConfirmationReason) -> Self
  init(taskListResolutionResult: INTaskListResolutionResult)
}
