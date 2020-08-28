
@available(tvOS 10.0, *)
enum INGetRideStatusIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "INGetRideStatusIntentResponseCodeInProgress is deprecated.")
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
}
@available(tvOS 10.0, *)
class INGetRideStatusIntentResponse : INIntentResponse {
  init(code: INGetRideStatusIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetRideStatusIntentResponseCode { get }
  @NSCopying var rideStatus: INRideStatus?
}
