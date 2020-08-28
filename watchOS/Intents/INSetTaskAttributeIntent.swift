
@available(watchOS 4.0, *)
class INSetTaskAttributeIntent : INIntent {
  @available(watchOS 6.0, *)
  init(targetTask: INTask?, taskTitle: INSpeakableString?, status: INTaskStatus, priority: INTaskPriority, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?)
  @NSCopying var targetTask: INTask? { get }
  @available(watchOS 6.0, *)
  @NSCopying var taskTitle: INSpeakableString? { get }
  var status: INTaskStatus { get }
  @available(watchOS 6.0, *)
  var priority: INTaskPriority { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
}
@available(watchOS 4.0, *)
protocol INSetTaskAttributeIntentHandling : NSObjectProtocol {
  func handle(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void)
  optional func confirm(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void)
  optional func resolveTargetTask(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTaskTitle(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveStatus(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskStatusResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolvePriority(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
  optional func resolveSpatialEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSpatialEventTriggerResolutionResult) -> Void)
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTemporalEventTriggerForSetTaskAttribute:withCompletion: is deprecated. Use resolveTemporalEventTriggerForSetTaskAttribute:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTemporalEventTriggerResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSetTaskAttributeTemporalEventTriggerResolutionResult) -> Void)
}
