
@available(iOS 10.0, *)
enum INRequestRideIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "INRequestRideIntentResponseCodeInProgress is deprecated.")
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchNoServiceInArea
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
  case failureRequiringAppLaunchPreviousRideNeedsCompletion
  @available(iOS 12.0, *)
  case failureRequiringAppLaunchRideScheduledTooFar
}
@available(iOS 10.0, *)
class INRequestRideIntentResponse : INIntentResponse {
  init(code: INRequestRideIntentResponseCode, userActivity: NSUserActivity?)
  var code: INRequestRideIntentResponseCode { get }
  @NSCopying var rideStatus: INRideStatus?
}
