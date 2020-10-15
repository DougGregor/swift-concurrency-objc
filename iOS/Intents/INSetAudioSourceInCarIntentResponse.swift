
@available(iOS 10.0, *)
enum INSetAudioSourceInCarIntentResponseCode : Int {
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
class INSetAudioSourceInCarIntentResponse : INIntentResponse {
  init(code: INSetAudioSourceInCarIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetAudioSourceInCarIntentResponseCode { get }
}
