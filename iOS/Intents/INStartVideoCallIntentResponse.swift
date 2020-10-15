
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "INStartVideoCallIntent is deprecated. Please adopt INStartCallIntent instead")
enum INStartVideoCallIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureAppConfigurationRequired
  case failureCallingServiceNotAvailable
  case failureContactNotSupportedByApp
  @available(iOS 11.0, *)
  case failureInvalidNumber
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "INStartVideoCallIntent is deprecated. Please adopt INStartCallIntent instead")
class INStartVideoCallIntentResponse : INIntentResponse {
  init(code: INStartVideoCallIntentResponseCode, userActivity: NSUserActivity?)
  var code: INStartVideoCallIntentResponseCode { get }
}
