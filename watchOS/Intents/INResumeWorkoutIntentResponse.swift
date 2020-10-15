
@available(watchOS 3.2, *)
enum INResumeWorkoutIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureNoMatchingWorkout
}
@available(watchOS 3.2, *)
class INResumeWorkoutIntentResponse : INIntentResponse {
  init(code: INResumeWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INResumeWorkoutIntentResponseCode { get }
}
