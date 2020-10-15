
class NSMenu : NSObject, NSCopying, NSCoding, NSUserInterfaceItemIdentification, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  init(title: String)
  var title: String
  class func popUpContextMenu(_ menu: NSMenu, with event: NSEvent, for view: NSView)
  class func popUpContextMenu(_ menu: NSMenu, with event: NSEvent, for view: NSView, with font: NSFont?)
  @available(macOS 10.6, *)
  func popUp(positioning item: NSMenuItem?, at location: NSPoint, in view: NSView?) -> Bool
  class func setMenuBarVisible(_ visible: Bool)
  class func menuBarVisible() -> Bool
  unowned(unsafe) var supermenu: @sil_unmanaged NSMenu?
  func insertItem(_ newItem: NSMenuItem, at index: Int)
  func addItem(_ newItem: NSMenuItem)
  func insertItem(withTitle string: String, action selector: Selector?, keyEquivalent charCode: String, at index: Int) -> NSMenuItem
  func addItem(withTitle string: String, action selector: Selector?, keyEquivalent charCode: String) -> NSMenuItem
  func removeItem(at index: Int)
  func removeItem(_ item: NSMenuItem)
  func setSubmenu(_ menu: NSMenu?, for item: NSMenuItem)
  @available(macOS 10.6, *)
  func removeAllItems()
  var items: [NSMenuItem]
  var numberOfItems: Int { get }
  func item(at index: Int) -> NSMenuItem?
  func index(of item: NSMenuItem) -> Int
  func indexOfItem(withTitle title: String) -> Int
  func indexOfItem(withTag tag: Int) -> Int
  func indexOfItem(withRepresentedObject object: Any?) -> Int
  func indexOfItem(withSubmenu submenu: NSMenu?) -> Int
  func indexOfItem(withTarget target: Any?, andAction actionSelector: Selector?) -> Int
  func item(withTitle title: String) -> NSMenuItem?
  func item(withTag tag: Int) -> NSMenuItem?
  var autoenablesItems: Bool
  func update()
  func performKeyEquivalent(with event: NSEvent) -> Bool
  func itemChanged(_ item: NSMenuItem)
  func performActionForItem(at index: Int)
  weak var delegate: @sil_weak NSMenuDelegate?
  var menuBarHeight: CGFloat { get }
  @available(macOS 10.5, *)
  func cancelTracking()
  @available(macOS 10.6, *)
  func cancelTrackingWithoutAnimation()
  @available(macOS 10.5, *)
  var highlightedItem: NSMenuItem? { get }
  @available(macOS 10.6, *)
  var minimumWidth: CGFloat
  @available(macOS 10.6, *)
  var size: NSSize { get }
  @available(macOS 10.6, *)
  var font: NSFont!
  @available(macOS 10.6, *)
  var allowsContextMenuPlugIns: Bool
  @available(macOS 10.5, *)
  var showsStateColumn: Bool
  @available(macOS 10.11, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
}
extension NSMenu {
  func submenuAction(_ sender: Any?)
}
protocol NSMenuItemValidation : NSObjectProtocol {
  func validateMenuItem(_ menuItem: NSMenuItem) -> Bool
}
protocol NSMenuDelegate : NSObjectProtocol {
  optional func menuNeedsUpdate(_ menu: NSMenu)
  optional func numberOfItems(in menu: NSMenu) -> Int
  optional func menu(_ menu: NSMenu, update item: NSMenuItem, at index: Int, shouldCancel: Bool) -> Bool
  optional func menuHasKeyEquivalent(_ menu: NSMenu, for event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector?>) -> Bool
  @available(macOS 10.5, *)
  optional func menuWillOpen(_ menu: NSMenu)
  @available(macOS 10.5, *)
  @asyncHandler optional func menuDidClose(_ menu: NSMenu)
  @available(macOS 10.5, *)
  optional func menu(_ menu: NSMenu, willHighlight item: NSMenuItem?)
  @available(macOS 10.6, *)
  optional func confinementRect(for menu: NSMenu, on screen: NSScreen?) -> NSRect
}
extension NSMenu {
  struct Properties : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var propertyItemTitle: NSMenu.Properties { get }
    static var propertyItemAttributedTitle: NSMenu.Properties { get }
    static var propertyItemKeyEquivalent: NSMenu.Properties { get }
    static var propertyItemImage: NSMenu.Properties { get }
    static var propertyItemEnabled: NSMenu.Properties { get }
    static var propertyItemAccessibilityDescription: NSMenu.Properties { get }
  }
  class let willSendActionNotification: NSNotification.Name
  class let didSendActionNotification: NSNotification.Name
  class let didAddItemNotification: NSNotification.Name
  class let didRemoveItemNotification: NSNotification.Name
  class let didChangeItemNotification: NSNotification.Name
  class let didBeginTrackingNotification: NSNotification.Name
  class let didEndTrackingNotification: NSNotification.Name
}
extension NSMenu {
  @available(macOS 10.6, *)
  var propertiesToUpdate: NSMenu.Properties { get }
}
extension NSMenu {
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  class func menuZone() -> NSZone!
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  var menuChangedMessagesEnabled: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  func helpRequested(with eventPtr: NSEvent)
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  var isTornOff: Bool { get }
}
