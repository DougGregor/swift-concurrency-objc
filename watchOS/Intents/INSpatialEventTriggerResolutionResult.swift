
@available(watchOS 4.0, *)
class INSpatialEventTriggerResolutionResult : INIntentResolutionResult {
  class func success(with resolvedSpatialEventTrigger: INSpatialEventTrigger) -> Self
  class func disambiguation(with spatialEventTriggersToDisambiguate: [INSpatialEventTrigger]) -> Self
  class func confirmationRequired(with spatialEventTriggerToConfirm: INSpatialEventTrigger?) -> Self
}
