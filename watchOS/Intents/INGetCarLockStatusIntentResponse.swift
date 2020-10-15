
@available(watchOS 3.2, *)
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
@available(watchOS 3.2, *)
class INGetCarLockStatusIntentResponse : INIntentResponse {
  init(code: INGetCarLockStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetCarLockStatusIntentResponseCode { get }
  @NSCopying var __locked: NSNumber?
}

@available(macOS 10.15, iOS 10.3, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INGetCarLockStatusIntentResponse {
  @nonobjc final var locked: Bool?
}
