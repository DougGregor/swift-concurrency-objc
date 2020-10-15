
@available(watchOS 6.0, *)
enum INSnoozeTasksIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(watchOS 6.0, *)
class INSnoozeTasksIntentResponse : INIntentResponse {
  init(code: INSnoozeTasksIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSnoozeTasksIntentResponseCode { get }
  var snoozedTasks: [INTask]?
}
