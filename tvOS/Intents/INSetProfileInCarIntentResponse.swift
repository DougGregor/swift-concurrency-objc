
@available(tvOS 10.0, *)
enum INSetProfileInCarIntentResponseCode : Int {
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
class INSetProfileInCarIntentResponse : INIntentResponse {
  init(code: INSetProfileInCarIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetProfileInCarIntentResponseCode { get }
}
