
@available(tvOS 13.0, *)
class INSnoozeTasksIntent : INIntent {
  init(__tasks tasks: [INTask]?, nextTriggerTime: INDateComponentsRange?, all: NSNumber?)
  var tasks: [INTask]? { get }
  @NSCopying var nextTriggerTime: INDateComponentsRange? { get }
  @NSCopying var __all: NSNumber? { get }
}
@available(tvOS 13.0, *)
protocol INSnoozeTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INSnoozeTasksIntent, completion: @escaping (INSnoozeTasksIntentResponse) -> Void)
  func handle(intent: INSnoozeTasksIntent) async -> INSnoozeTasksIntentResponse
  optional func confirm(intent: INSnoozeTasksIntent, completion: @escaping (INSnoozeTasksIntentResponse) -> Void)
  optional func confirm(intent: INSnoozeTasksIntent) async -> INSnoozeTasksIntentResponse
  optional func resolveTasks(for intent: INSnoozeTasksIntent, with completion: @escaping ([INSnoozeTasksTaskResolutionResult]) -> Void)
  optional func resolveNextTriggerTime(for intent: INSnoozeTasksIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
}
