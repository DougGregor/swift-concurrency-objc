
@available(iOS 11.0, *)
enum INSendRideFeedbackIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case success
  case failure
}
@available(iOS 11.0, *)
class INSendRideFeedbackIntentResponse : INIntentResponse {
  init(code: INSendRideFeedbackIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSendRideFeedbackIntentResponseCode { get }
}
