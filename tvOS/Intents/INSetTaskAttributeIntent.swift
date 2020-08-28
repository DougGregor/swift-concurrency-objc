
@available(tvOS 11.0, *)
class INSetTaskAttributeIntent : INIntent {
  @available(tvOS 13.0, *)
  init(targetTask: INTask?, taskTitle: INSpeakableString?, status: INTaskStatus, priority: INTaskPriority, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?)
  @NSCopying var targetTask: INTask? { get }
  @available(tvOS 13.0, *)
  @NSCopying var taskTitle: INSpeakableString? { get }
  var status: INTaskStatus { get }
  @available(tvOS 13.0, *)
  var priority: INTaskPriority { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
}
@available(tvOS 11.0, *)
protocol INSetTaskAttributeIntentHandling : NSObjectProtocol {
  func handle(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void)
  func handle(intent: INSetTaskAttributeIntent) async -> INSetTaskAttributeIntentResponse
  optional func confirm(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void)
  optional func confirm(intent: INSetTaskAttributeIntent) async -> INSetTaskAttributeIntentResponse
  optional func resolveTargetTask(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskResolutionResult) -> Void)
  optional func resolveTargetTask(for intent: INSetTaskAttributeIntent) async -> INTaskResolutionResult
  @available(tvOS 13.0, *)
  optional func resolveTaskTitle(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolveTaskTitle(for intent: INSetTaskAttributeIntent) async -> INSpeakableStringResolutionResult
  optional func resolveStatus(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskStatusResolutionResult) -> Void)
  optional func resolveStatus(for intent: INSetTaskAttributeIntent) async -> INTaskStatusResolutionResult
  @available(tvOS 13.0, *)
  optional func resolvePriority(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolvePriority(for intent: INSetTaskAttributeIntent) async -> INTaskPriorityResolutionResult
  optional func resolveSpatialEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSpatialEventTriggerResolutionResult) -> Void)
  optional func resolveSpatialEventTrigger(for intent: INSetTaskAttributeIntent) async -> INSpatialEventTriggerResolutionResult
  @available(tvOS, introduced: 11.0, deprecated: 13.0, message: "resolveTemporalEventTriggerForSetTaskAttribute:withCompletion: is deprecated. Use resolveTemporalEventTriggerForSetTaskAttribute:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INTemporalEventTriggerResolutionResult) -> Void)
  @available(tvOS, introduced: 11.0, deprecated: 13.0, message: "resolveTemporalEventTriggerForSetTaskAttribute:withCompletion: is deprecated. Use resolveTemporalEventTriggerForSetTaskAttribute:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent) async -> INTemporalEventTriggerResolutionResult
  @available(tvOS 13.0, *)
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent, with completion: @escaping (INSetTaskAttributeTemporalEventTriggerResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolveTemporalEventTrigger(for intent: INSetTaskAttributeIntent) async -> INSetTaskAttributeTemporalEventTriggerResolutionResult
}
