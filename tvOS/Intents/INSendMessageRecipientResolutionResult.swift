
@available(tvOS 11.0, *)
enum INSendMessageRecipientUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noAccount
  case offline
  case messagingServiceNotEnabledForRecipient
  @available(tvOS 12.0, *)
  case noValidHandle
  @available(tvOS 12.0, *)
  case requestedHandleInvalid
  @available(tvOS 12.0, *)
  case noHandleForLabel
}
@available(tvOS 11.0, *)
class INSendMessageRecipientResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INSendMessageRecipientUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
