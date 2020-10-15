
@available(iOS 10.0, *)
enum INEndWorkoutIntentResponseCode : Int {
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
class INEndWorkoutIntentResponse : INIntentResponse {
  init(code: INEndWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INEndWorkoutIntentResponseCode { get }
}
