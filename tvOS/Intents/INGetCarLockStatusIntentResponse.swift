
@available(tvOS 10.3, *)
enum INGetCarLockStatusIntentResponseCode : Int {
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
class INGetCarLockStatusIntentResponse : INIntentResponse {
  init(code: INGetCarLockStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetCarLockStatusIntentResponseCode { get }
  @NSCopying var __locked: NSNumber?
}
