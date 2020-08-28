
@available(tvOS 11.0, *)
class INTemporalEventTriggerResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTemporalEventTrigger: INTemporalEventTrigger) -> Self
  class func disambiguation(with temporalEventTriggersToDisambiguate: [INTemporalEventTrigger]) -> Self
  class func confirmationRequired(with temporalEventTriggerToConfirm: INTemporalEventTrigger?) -> Self
}
