
@available(watchOS 3.0, *)
enum INSetMessageAttributeIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureMessageNotFound
  case failureMessageAttributeNotSet
}
@available(watchOS 3.0, *)
class INSetMessageAttributeIntentResponse : INIntentResponse {
  init(code: INSetMessageAttributeIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSetMessageAttributeIntentResponseCode { get }
}
