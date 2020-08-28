
@available(watchOS 5.0, *)
class INVoiceShortcutCenter : NSObject {
  class var shared: INVoiceShortcutCenter { get }
  func getAllVoiceShortcuts(completion completionHandler: @escaping ([INVoiceShortcut]?, Error?) -> Void)
  func getAllVoiceShortcuts() async throws -> [INVoiceShortcut]?
  func getVoiceShortcut(with identifier: UUID, completion completionHandler: @escaping (INVoiceShortcut?, Error?) -> Void)
  func getVoiceShortcut(with identifier: UUID) async throws -> INVoiceShortcut?
  func setShortcutSuggestions(_ suggestions: [INShortcut])
}
