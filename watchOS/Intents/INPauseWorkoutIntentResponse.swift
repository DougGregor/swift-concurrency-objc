
@available(watchOS 3.2, *)
enum INPauseWorkoutIntentResponseCode : Int {
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
class INPauseWorkoutIntentResponse : INIntentResponse {
  init(code: INPauseWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INPauseWorkoutIntentResponseCode { get }
}
