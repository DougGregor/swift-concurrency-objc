
@available(iOS 11.0, *)
enum INGetVisualCodeIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureAppConfigurationRequired
}
@available(iOS 11.0, *)
class INGetVisualCodeIntentResponse : INIntentResponse {
  init(code: INGetVisualCodeIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetVisualCodeIntentResponseCode { get }
  @NSCopying var visualCodeImage: INImage?
}
