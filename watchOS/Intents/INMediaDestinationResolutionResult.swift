
@available(watchOS 6.0, *)
class INMediaDestinationResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMediaDestination: INMediaDestination) -> Self
  class func disambiguation(with mediaDestinationsToDisambiguate: [INMediaDestination]) -> Self
  class func confirmationRequired(with mediaDestinationToConfirm: INMediaDestination?) -> Self
}
