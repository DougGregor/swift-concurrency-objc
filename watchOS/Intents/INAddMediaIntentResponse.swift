
@available(watchOS 6.0, *)
enum INAddMediaIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(watchOS 6.0, *)
class INAddMediaIntentResponse : INIntentResponse {
  init(code: INAddMediaIntentResponseCode, userActivity: NSUserActivity?)
  var code: INAddMediaIntentResponseCode { get }
}
