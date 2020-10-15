
@available(watchOS 4.0, *)
class INAddTasksIntent : INIntent {
  @available(watchOS 6.0, *)
  init(targetTaskList: INTaskList?, taskTitles: [INSpeakableString]?, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?, priority: INTaskPriority)
  @NSCopying var targetTaskList: INTaskList? { get }
  var taskTitles: [INSpeakableString]? { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
  @available(watchOS 6.0, *)
  var priority: INTaskPriority { get }
}
@available(watchOS 4.0, *)
protocol INAddTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INAddTasksIntent, completion: @escaping (INAddTasksIntentResponse) -> Void)
  func handle(intent: INAddTasksIntent) async -> INAddTasksIntentResponse
  optional func confirm(intent: INAddTasksIntent, completion: @escaping (INAddTasksIntentResponse) -> Void)
  optional func confirm(intent: INAddTasksIntent) async -> INAddTasksIntentResponse
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTargetTaskListForAddTasks:withCompletion: is deprecated. Use resolveTargetTaskListForAddTasks:completion: instead")
  optional func resolveTargetTaskList(for intent: INAddTasksIntent, with completion: @escaping (INTaskListResolutionResult) -> Void)
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTargetTaskListForAddTasks:withCompletion: is deprecated. Use resolveTargetTaskListForAddTasks:completion: instead")
  optional func resolveTargetTaskList(for intent: INAddTasksIntent) async -> INTaskListResolutionResult
  @available(watchOS 6.0, *)
  optional func resolveTargetTaskList(for intent: INAddTasksIntent, with completion: @escaping (INAddTasksTargetTaskListResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTargetTaskList(for intent: INAddTasksIntent) async -> INAddTasksTargetTaskListResolutionResult
  optional func resolveTaskTitles(for intent: INAddTasksIntent, with completion: @escaping ([INSpeakableStringResolutionResult]) -> Void)
  optional func resolveTaskTitles(for intent: INAddTasksIntent) async -> [INSpeakableStringResolutionResult]
  optional func resolveSpatialEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INSpatialEventTriggerResolutionResult) -> Void)
  optional func resolveSpatialEventTrigger(for intent: INAddTasksIntent) async -> INSpatialEventTriggerResolutionResult
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTemporalEventTriggerForAddTasks:withCompletion: is deprecated. Use resolveTemporalEventTriggerForAddTasks:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INTemporalEventTriggerResolutionResult) -> Void)
  @available(watchOS, introduced: 4.0, deprecated: 6.0, message: "resolveTemporalEventTriggerForAddTasks:withCompletion: is deprecated. Use resolveTemporalEventTriggerForAddTasks:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent) async -> INTemporalEventTriggerResolutionResult
  @available(watchOS 6.0, *)
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INAddTasksTemporalEventTriggerResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent) async -> INAddTasksTemporalEventTriggerResolutionResult
  @available(watchOS 6.0, *)
  optional func resolvePriority(for intent: INAddTasksIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolvePriority(for intent: INAddTasksIntent) async -> INTaskPriorityResolutionResult
}
