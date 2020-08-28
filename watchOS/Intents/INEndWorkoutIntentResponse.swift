
@available(watchOS 3.2, *)
enum INEndWorkoutIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureNoMatchingWorkout
  @available(watchOS 4.0, *)
  case success
}
@available(watchOS 3.2, *)
class INEndWorkoutIntentResponse : INIntentResponse {
  init(code: INEndWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INEndWorkoutIntentResponseCode { get }
}
