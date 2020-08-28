
@available(iOS 10.0, *)
enum INStartPhotoPlaybackIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case failure
  case failureRequiringAppLaunch
  case failureAppConfigurationRequired
}
@available(iOS 10.0, *)
class INStartPhotoPlaybackIntentResponse : INIntentResponse {
  init(code: INStartPhotoPlaybackIntentResponseCode, userActivity: NSUserActivity?)
  var code: INStartPhotoPlaybackIntentResponseCode { get }
  @NSCopying var __searchResultsCount: NSNumber?
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INStartPhotoPlaybackIntentResponse {
  @nonobjc final var searchResultsCount: Int?
}
