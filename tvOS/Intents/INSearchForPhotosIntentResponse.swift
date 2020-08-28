
@available(tvOS 10.0, *)
enum INSearchForPhotosIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureAppConfigurationRequired
}
@available(tvOS 10.0, *)
class INSearchForPhotosIntentResponse : INIntentResponse {
  init(code: INSearchForPhotosIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForPhotosIntentResponseCode { get }
  @NSCopying var __searchResultsCount: NSNumber?
}
