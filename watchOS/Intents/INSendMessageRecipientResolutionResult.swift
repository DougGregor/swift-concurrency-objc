
@available(watchOS 4.0, *)
enum INSendMessageRecipientUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noAccount
  case offline
  case messagingServiceNotEnabledForRecipient
  @available(watchOS 5.0, *)
  case noValidHandle
  @available(watchOS 5.0, *)
  case requestedHandleInvalid
  @available(watchOS 5.0, *)
  case noHandleForLabel
}
@available(watchOS 4.0, *)
class INSendMessageRecipientResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INSendMessageRecipientUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
