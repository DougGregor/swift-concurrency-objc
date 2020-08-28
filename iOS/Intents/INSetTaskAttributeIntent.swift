
@available(iOS 11.0, *)
class INSetTaskAttributeIntent : INIntent {
  @available(iOS 13.0, *)
  init(targetTask: INTask?, taskTitle: INSpeakableString?, status: INTaskStatus, priority: INTaskPriority, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?)
  @NSCopying var targetTask: INTask? { get }
  @available(iOS 13.0, *)
  @NSCopying var taskTitle: INSpeakableString? { get }
  var status: INTaskStatus { get }
  @available(iOS 13.0, *)
  var priority: INTaskPriority { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
}
@available(iOS 11.0, *)
protocol INSetTaskAttributeIntentHandling : NSObjectProtocol {
  func handle(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void)
  func handle(intent: INSetTaskAttributeIntent) async -> INSetTaskAttributeIntentResponse
  optional func confirm(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void)
  optional func confirm(intent: INSetTaskAttributeIntent) async -> INSetTaskAttributeIntentResponse
  optional func resolveTargetTask(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolveTaskTitle(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveStatus(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskStatusResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolvePriority(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
  optional func resolveSpatialEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSpatialEventTriggerResolutionResult) -> Void)
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "resolveTemporalEventTriggerForSetTaskAttribute:withCompletion: is deprecated. Use resolveTemporalEventTriggerForSetTaskAttribute:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTemporalEventTriggerResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSetTaskAttributeTemporalEventTriggerResolutionResult) -> Void)
}
