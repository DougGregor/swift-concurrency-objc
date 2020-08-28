
@available(watchOS 3.2, *)
enum INStartWorkoutIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureOngoingWorkout
  case failureNoMatchingWorkout
  @available(watchOS 4.0, *)
  case success
}
@available(watchOS 3.2, *)
class INStartWorkoutIntentResponse : INIntentResponse {
  init(code: INStartWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INStartWorkoutIntentResponseCode { get }
}
