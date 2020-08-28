
@available(watchOS 6.0, *)
enum INDeleteTasksTaskUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noTasksFound
  case noTasksInApp
}
@available(watchOS 6.0, *)
class INDeleteTasksTaskResolutionResult : INTaskResolutionResult {
  class func unsupported(forReason reason: INDeleteTasksTaskUnsupportedReason) -> Self
  init(taskResolutionResult: INTaskResolutionResult)
}
