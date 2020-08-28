
@available(iOS 13.0, *)
enum INSetTaskAttributeTemporalEventTriggerUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case timeInPast
  case invalidRecurrence
}
@available(iOS 13.0, *)
class INSetTaskAttributeTemporalEventTriggerResolutionResult : INTemporalEventTriggerResolutionResult {
  class func unsupported(forReason reason: INSetTaskAttributeTemporalEventTriggerUnsupportedReason) -> Self
  init(temporalEventTriggerResolutionResult: INTemporalEventTriggerResolutionResult)
}
