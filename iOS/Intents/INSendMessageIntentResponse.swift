
@available(iOS 10.0, *)
enum INSendMessageIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureMessageServiceNotAvailable
}
@available(iOS 10.0, *)
class INSendMessageIntentResponse : INIntentResponse {
  init(code: INSendMessageIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSendMessageIntentResponseCode { get }
  @available(iOS 10.3, *)
  @NSCopying var sentMessage: INMessage?
}
