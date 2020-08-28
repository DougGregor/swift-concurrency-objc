
@available(tvOS 10.0, *)
enum INResumeWorkoutIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureNoMatchingWorkout
  @available(tvOS 11.0, *)
  case handleInApp
  @available(tvOS 11.0, *)
  case success
}
@available(tvOS 10.0, *)
class INResumeWorkoutIntentResponse : INIntentResponse {
  init(code: INResumeWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INResumeWorkoutIntentResponseCode { get }
}
