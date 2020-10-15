
@available(watchOS 3.2, *)
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
@available(watchOS 3.2, *)
class INSearchForPhotosIntentResponse : INIntentResponse {
  init(code: INSearchForPhotosIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForPhotosIntentResponseCode { get }
  @NSCopying var __searchResultsCount: NSNumber?
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSearchForPhotosIntentResponse {
  @nonobjc final var searchResultsCount: Int?
}
