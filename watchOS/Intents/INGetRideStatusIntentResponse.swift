
@available(watchOS 3.2, *)
enum INGetRideStatusIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "INGetRideStatusIntentResponseCodeInProgress is deprecated.")
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
}
@available(watchOS 3.2, *)
class INGetRideStatusIntentResponse : INIntentResponse {
  init(code: INGetRideStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetRideStatusIntentResponseCode { get }
  @NSCopying var rideStatus: INRideStatus?
}
