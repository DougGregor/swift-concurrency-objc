
@available(tvOS 14.0, *)
class INOutgoingMessageTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedOutgoingMessageType: INOutgoingMessageType) -> Self
  class func confirmationRequired(with outgoingMessageTypeToConfirm: INOutgoingMessageType) -> Self
}
