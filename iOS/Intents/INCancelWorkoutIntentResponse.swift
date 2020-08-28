
@available(iOS 10.0, *)
enum INCancelWorkoutIntentResponseCode : Int {
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
class INCancelWorkoutIntentResponse : INIntentResponse {
  init(code: INCancelWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCancelWorkoutIntentResponseCode { get }
}
