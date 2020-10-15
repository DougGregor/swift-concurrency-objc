
@available(watchOS 4.0, *)
enum INCreateTaskListIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(watchOS 4.0, *)
class INCreateTaskListIntentResponse : INIntentResponse {
  init(code: INCreateTaskListIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCreateTaskListIntentResponseCode { get }
  @NSCopying var createdTaskList: INTaskList?
}
