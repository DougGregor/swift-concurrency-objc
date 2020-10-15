
@available(iOS 10.0, *)
enum INSetClimateSettingsInCarIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(iOS 10.0, *)
class INSetClimateSettingsInCarIntentResponse : INIntentResponse {
  init(code: INSetClimateSettingsInCarIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetClimateSettingsInCarIntentResponseCode { get }
}
