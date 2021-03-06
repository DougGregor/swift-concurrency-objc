
@available(iOS 11.0, *)
class INCallDestinationTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCallDestinationType: INCallDestinationType) -> Self
  class func confirmationRequired(with callDestinationTypeToConfirm: INCallDestinationType) -> Self
}
