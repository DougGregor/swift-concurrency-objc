
@available(tvOS 11.0, *)
enum INAddTasksIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 11.0, *)
class INAddTasksIntentResponse : INIntentResponse {
  init(code: INAddTasksIntentResponseCode, userActivity: NSUserActivity?)
  var code: INAddTasksIntentResponseCode { get }
  @NSCopying var modifiedTaskList: INTaskList?
  var addedTasks: [INTask]?
}
