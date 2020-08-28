
@available(watchOS 3.2, *)
enum INRequestRideIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "INRequestRideIntentResponseCodeInProgress is deprecated.")
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchNoServiceInArea
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
  case failureRequiringAppLaunchPreviousRideNeedsCompletion
  @available(watchOS 5.0, *)
  case failureRequiringAppLaunchRideScheduledTooFar
}
@available(watchOS 3.2, *)
class INRequestRideIntentResponse : INIntentResponse {
  init(code: INRequestRideIntentResponseCode, userActivity: NSUserActivity?)
  var code: INRequestRideIntentResponseCode { get }
  @NSCopying var rideStatus: INRideStatus?
}
