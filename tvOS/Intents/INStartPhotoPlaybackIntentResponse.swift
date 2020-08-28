
@available(tvOS 10.0, *)
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
@available(tvOS 10.0, *)
class INStartPhotoPlaybackIntentResponse : INIntentResponse {
  init(code: INStartPhotoPlaybackIntentResponseCode, userActivity: NSUserActivity?)
  var code: INStartPhotoPlaybackIntentResponseCode { get }
  @NSCopying var __searchResultsCount: NSNumber?
}
