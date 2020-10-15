
@available(macOS 11.0, *)
class INPlacemarkResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPlacemark: CLPlacemark) -> Self
  class func disambiguation(with placemarksToDisambiguate: [CLPlacemark]) -> Self
  class func confirmationRequired(with placemarkToConfirm: CLPlacemark?) -> Self
}
