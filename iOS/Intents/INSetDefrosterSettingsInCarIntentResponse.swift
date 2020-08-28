
@available(iOS 10.0, *)
enum INSetDefrosterSettingsInCarIntentResponseCode : Int {
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
class INSetDefrosterSettingsInCarIntentResponse : INIntentResponse {
  init(code: INSetDefrosterSettingsInCarIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetDefrosterSettingsInCarIntentResponseCode { get }
}
