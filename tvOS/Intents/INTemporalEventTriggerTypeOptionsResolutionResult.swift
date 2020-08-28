
@available(tvOS 13.0, *)
class INTemporalEventTriggerTypeOptionsResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTemporalEventTriggerTypeOptions: INTemporalEventTriggerTypeOptions = []) -> Self
  class func confirmationRequired(with temporalEventTriggerTypeOptionsToConfirm: INTemporalEventTriggerTypeOptions = []) -> Self
}
