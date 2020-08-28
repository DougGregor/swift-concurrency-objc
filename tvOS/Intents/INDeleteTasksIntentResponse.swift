
@available(tvOS 13.0, *)
enum INDeleteTasksIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 13.0, *)
class INDeleteTasksIntentResponse : INIntentResponse {
  init(code: INDeleteTasksIntentResponseCode, userActivity: NSUserActivity?)
  var code: INDeleteTasksIntentResponseCode { get }
  var deletedTasks: [INTask]?
}
