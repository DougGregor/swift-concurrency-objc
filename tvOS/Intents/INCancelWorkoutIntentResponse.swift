
@available(tvOS 10.0, *)
enum INCancelWorkoutIntentResponseCode : Int {
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
class INCancelWorkoutIntentResponse : INIntentResponse {
  init(code: INCancelWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCancelWorkoutIntentResponseCode { get }
}
