
@available(iOS 11.0, *)
enum INSendMessageRecipientUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noAccount
  case offline
  case messagingServiceNotEnabledForRecipient
  @available(iOS 12.0, *)
  case noValidHandle
  @available(iOS 12.0, *)
  case requestedHandleInvalid
  @available(iOS 12.0, *)
  case noHandleForLabel
}
@available(iOS 11.0, *)
class INSendMessageRecipientResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INSendMessageRecipientUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
