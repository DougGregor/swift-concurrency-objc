
@available(watchOS 4.0, *)
class INCreateTaskListIntent : INIntent {
  init(title: INSpeakableString?, taskTitles: [INSpeakableString]?, groupName: INSpeakableString?)
  @NSCopying var title: INSpeakableString? { get }
  var taskTitles: [INSpeakableString]? { get }
  @NSCopying var groupName: INSpeakableString? { get }
}
@available(watchOS 4.0, *)
protocol INCreateTaskListIntentHandling : NSObjectProtocol {
  func handle(intent: INCreateTaskListIntent, completion: @escaping (INCreateTaskListIntentResponse) -> Void)
  func handle(intent: INCreateTaskListIntent) async -> INCreateTaskListIntentResponse
  optional func confirm(intent: INCreateTaskListIntent, completion: @escaping (INCreateTaskListIntentResponse) -> Void)
  optional func confirm(intent: INCreateTaskListIntent) async -> INCreateTaskListIntentResponse
  optional func resolveTitle(for intent: INCreateTaskListIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveTitle(for intent: INCreateTaskListIntent) async -> INSpeakableStringResolutionResult
  optional func resolveTaskTitles(for intent: INCreateTaskListIntent, with completion: @escaping ([INSpeakableStringResolutionResult]) -> Void)
  optional func resolveTaskTitles(for intent: INCreateTaskListIntent) async -> [INSpeakableStringResolutionResult]
  optional func resolveGroupName(for intent: INCreateTaskListIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveGroupName(for intent: INCreateTaskListIntent) async -> INSpeakableStringResolutionResult
}
