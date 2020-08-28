
@available(iOS 10.0, *)
enum INResumeWorkoutIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureNoMatchingWorkout
  @available(iOS 11.0, *)
  case handleInApp
  @available(iOS 11.0, *)
  case success
}
@available(iOS 10.0, *)
class INResumeWorkoutIntentResponse : INIntentResponse {
  init(code: INResumeWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INResumeWorkoutIntentResponseCode { get }
}
