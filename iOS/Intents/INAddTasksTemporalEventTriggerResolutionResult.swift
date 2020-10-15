
@available(iOS 13.0, *)
enum INAddTasksTemporalEventTriggerUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case timeInPast
  case invalidRecurrence
}
@available(iOS 13.0, *)
class INAddTasksTemporalEventTriggerResolutionResult : INTemporalEventTriggerResolutionResult {
  class func unsupported(forReason reason: INAddTasksTemporalEventTriggerUnsupportedReason) -> Self
  init(temporalEventTriggerResolutionResult: INTemporalEventTriggerResolutionResult)
}
