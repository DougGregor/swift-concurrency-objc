
@available(tvOS 10.0, *)
enum INSaveProfileInCarIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
}
@available(tvOS 10.0, *)
class INSaveProfileInCarIntentResponse : INIntentResponse {
  init(code: INSaveProfileInCarIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSaveProfileInCarIntentResponseCode { get }
}
