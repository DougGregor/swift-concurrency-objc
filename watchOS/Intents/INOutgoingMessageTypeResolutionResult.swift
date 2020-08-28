
@available(watchOS 7.0, *)
class INOutgoingMessageTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedOutgoingMessageType: INOutgoingMessageType) -> Self
  class func confirmationRequired(with outgoingMessageTypeToConfirm: INOutgoingMessageType) -> Self
}
