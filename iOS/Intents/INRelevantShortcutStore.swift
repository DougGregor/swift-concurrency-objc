
@available(iOS 12.0, *)
class INRelevantShortcutStore : NSObject {
  class var `default`: INRelevantShortcutStore { get }
  func setRelevantShortcuts(_ shortcuts: [INRelevantShortcut], completionHandler: ((Error?) -> Void)? = nil)
  func setRelevantShortcuts(_ shortcuts: [INRelevantShortcut]) async throws
}
