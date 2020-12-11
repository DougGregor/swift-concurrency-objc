
@available(iOS 11.0, *)
class INAddTasksIntent : INIntent {
  @available(iOS 13.0, *)
  init(targetTaskList: INTaskList?, taskTitles: [INSpeakableString]?, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?, priority: INTaskPriority)
  @NSCopying var targetTaskList: INTaskList? { get }
  var taskTitles: [INSpeakableString]? { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
  @available(iOS 13.0, *)
  var priority: INTaskPriority { get }
}
@available(iOS 11.0, *)
protocol INAddTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INAddTasksIntent, completion: @escaping (INAddTasksIntentResponse) -> Void)
  func handle(intent: INAddTasksIntent) async -> INAddTasksIntentResponse
  optional func confirm(intent: INAddTasksIntent, completion: @escaping (INAddTasksIntentResponse) -> Void)
  optional func confirm(intent: INAddTasksIntent) async -> INAddTasksIntentResponse
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "resolveTargetTaskListForAddTasks:withCompletion: is deprecated. Use resolveTargetTaskListForAddTasks:completion: instead")
  optional func resolveTargetTaskList(for intent: INAddTasksIntent, with completion: @escaping (INTaskListResolutionResult) -> Void)
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "resolveTargetTaskListForAddTasks:withCompletion: is deprecated. Use resolveTargetTaskListForAddTasks:completion: instead")
  optional func resolveTargetTaskList(for intent: INAddTasksIntent) async -> INTaskListResolutionResult
  @available(iOS 13.0, *)
  optional func resolveTargetTaskList(for intent: INAddTasksIntent, with completion: @escaping (INAddTasksTargetTaskListResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolveTargetTaskList(for intent: INAddTasksIntent) async -> INAddTasksTargetTaskListResolutionResult
  optional func resolveTaskTitles(for intent: INAddTasksIntent, with completion: @escaping ([INSpeakableStringResolutionResult]) -> Void)
  optional func resolveTaskTitles(for intent: INAddTasksIntent) async -> [INSpeakableStringResolutionResult]
  optional func resolveSpatialEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INSpatialEventTriggerResolutionResult) -> Void)
  optional func resolveSpatialEventTrigger(for intent: INAddTasksIntent) async -> INSpatialEventTriggerResolutionResult
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "resolveTemporalEventTriggerForAddTasks:withCompletion: is deprecated. Use resolveTemporalEventTriggerForAddTasks:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INTemporalEventTriggerResolutionResult) -> Void)
  @available(iOS, introduced: 11.0, deprecated: 13.0, message: "resolveTemporalEventTriggerForAddTasks:withCompletion: is deprecated. Use resolveTemporalEventTriggerForAddTasks:completion: instead")
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent) async -> INTemporalEventTriggerResolutionResult
  @available(iOS 13.0, *)
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent, with completion: @escaping (INAddTasksTemporalEventTriggerResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolveTemporalEventTrigger(for intent: INAddTasksIntent) async -> INAddTasksTemporalEventTriggerResolutionResult
  @available(iOS 13.0, *)
  optional func resolvePriority(for intent: INAddTasksIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolvePriority(for intent: INAddTasksIntent) async -> INTaskPriorityResolutionResult
}
