
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "INStartAudioCallIntent is deprecated. Please adopt INStartCallIntent instead")
enum INStartAudioCallIntentResponseCode : Int {
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
  @available(watchOS 4.0, *)
  case failureNoValidNumber
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "INStartAudioCallIntent is deprecated. Please adopt INStartCallIntent instead")
class INStartAudioCallIntentResponse : INIntentResponse {
  init(code: INStartAudioCallIntentResponseCode, userActivity: NSUserActivity?)
  var code: INStartAudioCallIntentResponseCode { get }
}
