
@available(watchOS 4.0, *)
class INCallDestinationTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCallDestinationType: INCallDestinationType) -> Self
  class func confirmationRequired(with callDestinationTypeToConfirm: INCallDestinationType) -> Self
}
