
@available(iOS 13.0, *)
enum INDeleteTasksTaskListUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noTaskListFound
}
@available(iOS 13.0, *)
class INDeleteTasksTaskListResolutionResult : INTaskListResolutionResult {
  class func unsupported(forReason reason: INDeleteTasksTaskListUnsupportedReason) -> Self
  init(taskListResolutionResult: INTaskListResolutionResult)
}
