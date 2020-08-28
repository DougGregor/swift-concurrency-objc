
@available(watchOS 4.0, *)
class INCreateNoteIntent : INIntent {
  init(title: INSpeakableString?, content: INNoteContent?, groupName: INSpeakableString?)
  @NSCopying var title: INSpeakableString? { get }
  @NSCopying var content: INNoteContent? { get }
  @NSCopying var groupName: INSpeakableString? { get }
}
@available(watchOS 4.0, *)
protocol INCreateNoteIntentHandling : NSObjectProtocol {
  func handle(intent: INCreateNoteIntent, completion: @escaping (INCreateNoteIntentResponse) -> Void)
  func handle(intent: INCreateNoteIntent) async -> INCreateNoteIntentResponse
  optional func confirm(intent: INCreateNoteIntent, completion: @escaping (INCreateNoteIntentResponse) -> Void)
  optional func confirm(intent: INCreateNoteIntent) async -> INCreateNoteIntentResponse
  optional func resolveTitle(for intent: INCreateNoteIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveContent(for intent: INCreateNoteIntent, with completion: @escaping (INNoteContentResolutionResult) -> Void)
  optional func resolveGroupName(for intent: INCreateNoteIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
