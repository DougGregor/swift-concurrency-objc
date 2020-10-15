
@available(iOS 10.0, *)
enum INListRideOptionsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "INListRideOptionsIntentResponseCodeInProgress is deprecated.")
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchNoServiceInArea
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
  case failureRequiringAppLaunchPreviousRideNeedsCompletion
  @available(iOS 11.0, *)
  case failurePreviousRideNeedsFeedback
}
@available(iOS 10.0, *)
class INListRideOptionsIntentResponse : INIntentResponse {
  init(code: INListRideOptionsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INListRideOptionsIntentResponseCode { get }
  var rideOptions: [INRideOption]?
  var paymentMethods: [INPaymentMethod]?
  var expirationDate: Date?
}
