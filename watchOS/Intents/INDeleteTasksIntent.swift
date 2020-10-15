
@available(watchOS 6.0, *)
class INDeleteTasksIntent : INIntent {
  init(__taskList taskList: INTaskList?, tasks: [INTask]?, all: NSNumber?)
  @NSCopying var taskList: INTaskList? { get }
  var tasks: [INTask]? { get }
  @NSCopying var __all: NSNumber? { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INDeleteTasksIntent {
  @nonobjc convenience init(taskList: INTaskList? = nil, tasks: [INTask]? = nil, all: Bool? = nil)
  @nonobjc final var all: Bool? { get }
}
@available(watchOS 6.0, *)
protocol INDeleteTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INDeleteTasksIntent, completion: @escaping (INDeleteTasksIntentResponse) -> Void)
  optional func confirm(intent: INDeleteTasksIntent, completion: @escaping (INDeleteTasksIntentResponse) -> Void)
  optional func resolveTaskList(for intent: INDeleteTasksIntent, with completion: @escaping (INDeleteTasksTaskListResolutionResult) -> Void)
  optional func resolveTasks(for intent: INDeleteTasksIntent, with completion: @escaping ([INDeleteTasksTaskResolutionResult]) -> Void)
}
