
@available(watchOS 6.0, *)
enum INSearchForMediaIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case continueInApp
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(watchOS 6.0, *)
class INSearchForMediaIntentResponse : INIntentResponse {
  init(code: INSearchForMediaIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForMediaIntentResponseCode { get }
  var mediaItems: [INMediaItem]?
}
