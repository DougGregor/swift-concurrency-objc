
@available(tvOS 13.0, *)
class INDeleteTasksIntent : INIntent {
  init(__taskList taskList: INTaskList?, tasks: [INTask]?, all: NSNumber?)
  @NSCopying var taskList: INTaskList? { get }
  var tasks: [INTask]? { get }
  @NSCopying var __all: NSNumber? { get }
}
@available(tvOS 13.0, *)
protocol INDeleteTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INDeleteTasksIntent, completion: @escaping (INDeleteTasksIntentResponse) -> Void)
  func handle(intent: INDeleteTasksIntent) async -> INDeleteTasksIntentResponse
  optional func confirm(intent: INDeleteTasksIntent, completion: @escaping (INDeleteTasksIntentResponse) -> Void)
  optional func confirm(intent: INDeleteTasksIntent) async -> INDeleteTasksIntentResponse
  optional func resolveTaskList(for intent: INDeleteTasksIntent, with completion: @escaping (INDeleteTasksTaskListResolutionResult) -> Void)
  optional func resolveTasks(for intent: INDeleteTasksIntent, with completion: @escaping ([INDeleteTasksTaskResolutionResult]) -> Void)
}
