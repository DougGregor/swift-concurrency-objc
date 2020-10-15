
@available(watchOS 3.2, *)
enum INCancelWorkoutIntentResponseCode : Int {
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
class INCancelWorkoutIntentResponse : INIntentResponse {
  init(code: INCancelWorkoutIntentResponseCode, userActivity: NSUserActivity?)
  var code: INCancelWorkoutIntentResponseCode { get }
}
