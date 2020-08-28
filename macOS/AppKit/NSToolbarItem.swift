
extension NSToolbarItem {
  struct VisibilityPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Int)
    init(rawValue: Int)
    let rawValue: Int
  }
}
extension NSToolbarItem.VisibilityPriority {
  static let standard: NSToolbarItem.VisibilityPriority
  static let low: NSToolbarItem.VisibilityPriority
  static let high: NSToolbarItem.VisibilityPriority
  static let user: NSToolbarItem.VisibilityPriority
}
class NSToolbarItem : NSObject, NSCopying {
  init(itemIdentifier: NSToolbarItem.Identifier)
  var itemIdentifier: NSToolbarItem.Identifier { get }
  weak var toolbar: @sil_weak NSToolbar? { get }
  var label: String
  var paletteLabel: String
  var toolTip: String?
  var menuFormRepresentation: NSMenuItem?
  var tag: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var isEnabled: Bool
  var image: NSImage?
  @available(macOS 10.15, *)
  var title: String
  @available(macOS 10.15, *)
  var isBordered: Bool
  @available(macOS 11.0, *)
  var isNavigational: Bool
  var view: NSView?
  @available(macOS, introduced: 10.0, deprecated: 100000, message: "This property is no longer recommended. Instead, let the system automatically measure the size of the view using constraints.")
  var minSize: NSSize
  @available(macOS, introduced: 10.0, deprecated: 100000, message: "This property is no longer recommended. Instead, let the system automatically measure the size of the view using constraints.")
  var maxSize: NSSize
  var visibilityPriority: NSToolbarItem.VisibilityPriority
  func validate()
  var autovalidates: Bool
  var allowsDuplicatesInToolbar: Bool { get }
}
extension NSToolbarItem : NSMenuItemValidation, NSValidatedUserInterfaceItem {
}
protocol NSToolbarItemValidation : NSObjectProtocol {
  func validateToolbarItem(_ item: NSToolbarItem) -> Bool
}
protocol NSCloudSharingValidation : NSObjectProtocol {
  @available(macOS 10.12, *)
  func cloudShare(for item: NSValidatedUserInterfaceItem) -> CKShare?
}
extension NSToolbarItem.Identifier {
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "This item is no longer recommended and will be ignored on 10.7 and later.")
  static let separator: NSToolbarItem.Identifier
  static let space: NSToolbarItem.Identifier
  static let flexibleSpace: NSToolbarItem.Identifier
  static let showColors: NSToolbarItem.Identifier
  static let showFonts: NSToolbarItem.Identifier
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "This item is no longer recommended and will be ignored on 10.7 and later.")
  static let customizeToolbar: NSToolbarItem.Identifier
  static let print: NSToolbarItem.Identifier
  @available(macOS 10.11, *)
  static let toggleSidebar: NSToolbarItem.Identifier
  @available(macOS 10.12, *)
  static let cloudSharing: NSToolbarItem.Identifier
  @available(macOS 11.0, *)
  static let sidebarTrackingSeparator: NSToolbarItem.Identifier
}
