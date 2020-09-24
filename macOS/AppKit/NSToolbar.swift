
extension NSToolbar {
  typealias Identifier = String
  enum DisplayMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case iconAndLabel
    case iconOnly
    case labelOnly
  }
  enum SizeMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case regular
    case small
  }
  class let willAddItemNotification: NSNotification.Name
  class let didRemoveItemNotification: NSNotification.Name
}
extension NSToolbarItem {
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
class NSToolbar : NSObject {
  init(identifier: NSToolbar.Identifier)
  func insertItem(withItemIdentifier itemIdentifier: NSToolbarItem.Identifier, at index: Int)
  func removeItem(at index: Int)
  weak var delegate: @sil_weak NSToolbarDelegate?
  var isVisible: Bool
  func runCustomizationPalette(_ sender: Any?)
  var customizationPaletteIsRunning: Bool { get }
  var displayMode: NSToolbar.DisplayMode
  var selectedItemIdentifier: NSToolbarItem.Identifier?
  var sizeMode: NSToolbar.SizeMode
  var showsBaselineSeparator: Bool
  var allowsUserCustomization: Bool
  var identifier: NSToolbar.Identifier { get }
  var items: [NSToolbarItem] { get }
  var visibleItems: [NSToolbarItem]? { get }
  @available(macOS 10.14, *)
  var centeredItemIdentifier: NSToolbarItem.Identifier?
  var autosavesConfiguration: Bool
  func setConfiguration(_ configDict: [String : Any])
  var configuration: [String : Any] { get }
  func validateVisibleItems()
  @available(macOS 10.10, *)
  var allowsExtensionItems: Bool
}
protocol NSToolbarDelegate : NSObjectProtocol {
  optional func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: NSToolbarItem.Identifier, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  optional func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier]
  optional func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier]
  optional func toolbarSelectableItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier]
  optional func toolbarWillAddItem(_ notification: Notification)
  @asyncHandler optional func toolbarDidRemoveItem(_ notification: Notification)
}
extension NSToolbar {
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use NSTitlebarAccessoryViewController with NSWindow instead")
  var fullScreenAccessoryView: NSView?
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use NSTitlebarAccessoryViewController and its fullScreenMinHeight property with NSWindow instead.")
  var fullScreenAccessoryViewMinHeight: CGFloat
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use NSTitlebarAccessoryViewController with NSWindow instead. The max height of a titlebar accessory is implied by its view's height.")
  var fullScreenAccessoryViewMaxHeight: CGFloat
}
