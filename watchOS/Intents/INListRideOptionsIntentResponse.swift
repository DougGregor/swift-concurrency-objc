
@available(watchOS 3.2, *)
enum INListRideOptionsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "INListRideOptionsIntentResponseCodeInProgress is deprecated.")
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchNoServiceInArea
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
  case failureRequiringAppLaunchPreviousRideNeedsCompletion
  @available(watchOS 4.0, *)
  case failurePreviousRideNeedsFeedback
}
@available(watchOS 3.2, *)
class INListRideOptionsIntentResponse : INIntentResponse {
  init(code: INListRideOptionsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INListRideOptionsIntentResponseCode { get }
  var rideOptions: [INRideOption]?
  var paymentMethods: [INPaymentMethod]?
  var expirationDate: Date?
}
