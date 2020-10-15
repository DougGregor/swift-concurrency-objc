
@available(watchOS 6.0, *)
enum INSnoozeTasksTaskUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noTasksFound
}
@available(watchOS 6.0, *)
class INSnoozeTasksTaskResolutionResult : INTaskResolutionResult {
  class func unsupported(forReason reason: INSnoozeTasksTaskUnsupportedReason) -> Self
  init(taskResolutionResult: INTaskResolutionResult)
}
