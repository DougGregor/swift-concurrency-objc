
@available(tvOS 12.0, *)
enum INRelevantShortcutRole : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case action
  case information
}
@available(tvOS 12.0, *)
class INRelevantShortcut : NSObject, NSSecureCoding, NSCopying {
  var relevanceProviders: [INRelevanceProvider]
  @NSCopying var watchTemplate: INDefaultCardTemplate?
  var shortcutRole: INRelevantShortcutRole
  var shortcut: INShortcut { get }
  init(shortcut: INShortcut)
}
