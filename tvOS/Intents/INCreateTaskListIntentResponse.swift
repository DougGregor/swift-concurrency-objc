
@available(tvOS 11.0, *)
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
@available(tvOS 11.0, *)
class INCreateTaskListIntentResponse : INIntentResponse {
  init(code: INCreateTaskListIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCreateTaskListIntentResponseCode { get }
  @NSCopying var createdTaskList: INTaskList?
}
