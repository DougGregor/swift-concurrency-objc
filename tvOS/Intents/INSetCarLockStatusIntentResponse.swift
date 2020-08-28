
@available(tvOS 10.3, *)
enum INSetCarLockStatusIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 10.3, *)
class INSetCarLockStatusIntentResponse : INIntentResponse {
  init(code: INSetCarLockStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetCarLockStatusIntentResponseCode { get }
}
