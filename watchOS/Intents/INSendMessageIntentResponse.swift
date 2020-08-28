
@available(watchOS 3.2, *)
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
@available(watchOS 3.2, *)
class INSendMessageIntentResponse : INIntentResponse {
  init(code: INSendMessageIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSendMessageIntentResponseCode { get }
  @available(watchOS 3.3, *)
  @NSCopying var sentMessage: INMessage?
}
