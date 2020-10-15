
@available(watchOS 6.0, *)
class INSnoozeTasksIntent : INIntent {
  init(__tasks tasks: [INTask]?, nextTriggerTime: INDateComponentsRange?, all: NSNumber?)
  var tasks: [INTask]? { get }
  @NSCopying var nextTriggerTime: INDateComponentsRange? { get }
  @NSCopying var __all: NSNumber? { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSnoozeTasksIntent {
  @nonobjc convenience init(tasks: [INTask]? = nil, nextTriggerTime: INDateComponentsRange? = nil, all: Bool? = nil)
  @nonobjc final var all: Bool? { get }
}
@available(watchOS 6.0, *)
protocol INSnoozeTasksIntentHandling : NSObjectProtocol {
  func handle(intent: INSnoozeTasksIntent, completion: @escaping (INSnoozeTasksIntentResponse) -> Void)
  optional func confirm(intent: INSnoozeTasksIntent, completion: @escaping (INSnoozeTasksIntentResponse) -> Void)
  optional func resolveTasks(for intent: INSnoozeTasksIntent, with completion: @escaping ([INSnoozeTasksTaskResolutionResult]) -> Void)
  optional func resolveNextTriggerTime(for intent: INSnoozeTasksIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
}
