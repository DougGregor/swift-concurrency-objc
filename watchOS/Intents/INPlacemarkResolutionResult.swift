
@available(watchOS 3.2, *)
class INPlacemarkResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPlacemark: CLPlacemark) -> Self
  class func disambiguation(with placemarksToDisambiguate: [CLPlacemark]) -> Self
  class func confirmationRequired(with placemarkToConfirm: CLPlacemark?) -> Self
}
