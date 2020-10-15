
class NSMenuItem : NSObject, NSCopying, NSCoding, NSValidatedUserInterfaceItem, NSUserInterfaceItemIdentification, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  class var usesUserKeyEquivalents: Bool
  class func separator() -> NSMenuItem
  init(title string: String, action selector: Selector?, keyEquivalent charCode: String)
  unowned(unsafe) var menu: @sil_unmanaged NSMenu?
  var hasSubmenu: Bool { get }
  var submenu: NSMenu?
  @available(macOS 10.6, *)
  unowned(unsafe) var parent: @sil_unmanaged NSMenuItem? { get }
  var title: String
  @NSCopying var attributedTitle: NSAttributedString?
  var isSeparatorItem: Bool { get }
  var keyEquivalent: String
  var keyEquivalentModifierMask: NSEvent.ModifierFlags
  var userKeyEquivalent: String { get }
  @available(macOS 10.13, *)
  var allowsKeyEquivalentWhenHidden: Bool
  var image: NSImage?
  var state: NSControl.StateValue
  var onStateImage: NSImage!
  var offStateImage: NSImage?
  var mixedStateImage: NSImage!
  var isEnabled: Bool
  var isAlternate: Bool
  var indentationLevel: Int
  weak var target: @sil_weak AnyObject?
  var representedObject: Any?
  @available(macOS 10.5, *)
  var view: NSView?
  @available(macOS 10.5, *)
  var isHighlighted: Bool { get }
  @available(macOS 10.5, *)
  var isHidden: Bool
  @available(macOS 10.5, *)
  var isHiddenOrHasHiddenAncestor: Bool { get }
  var toolTip: String?
}
extension NSView {
  @available(macOS 10.5, *)
  var enclosingMenuItem: NSMenuItem? { get }
}
extension NSMenuItem {
  @available(macOS 10.14, *)
  class let importFromDeviceIdentifier: NSUserInterfaceItemIdentifier
}
extension NSMenuItem {
  @available(macOS, introduced: 10.0, deprecated: 10.13)
  func setTitleWithMnemonic(_ stringWithAmpersand: String)
}
