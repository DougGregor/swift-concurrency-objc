
@available(iOS 11.0, *)
class INAppendToNoteIntent : INIntent {
  init(targetNote: INNote?, content: INNoteContent?)
  @NSCopying var targetNote: INNote? { get }
  @NSCopying var content: INNoteContent? { get }
}
@available(iOS 11.0, *)
protocol INAppendToNoteIntentHandling : NSObjectProtocol {
  func handle(intent: INAppendToNoteIntent, completion: @escaping (INAppendToNoteIntentResponse) -> Void)
  optional func confirm(intent: INAppendToNoteIntent, completion: @escaping (INAppendToNoteIntentResponse) -> Void)
  optional func resolveTargetNote(for intent: INAppendToNoteIntent, with completion: @escaping (INNoteResolutionResult) -> Void)
  optional func resolveContent(for intent: INAppendToNoteIntent, with completion: @escaping (INNoteContentResolutionResult) -> Void)
}
