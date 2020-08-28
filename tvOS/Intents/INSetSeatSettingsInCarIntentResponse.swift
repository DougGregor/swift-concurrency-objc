
@available(tvOS 10.0, *)
enum INSetSeatSettingsInCarIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 10.0, *)
class INSetSeatSettingsInCarIntentResponse : INIntentResponse {
  init(code: INSetSeatSettingsInCarIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetSeatSettingsInCarIntentResponseCode { get }
}
