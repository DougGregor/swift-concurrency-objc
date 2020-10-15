
extension NSStatusItem {
  typealias AutosaveName = String
  @available(macOS 10.12, *)
  struct Behavior : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var removalAllowed: NSStatusItem.Behavior { get }
    static var terminationOnRemoval: NSStatusItem.Behavior { get }
  }
}
class NSStatusItem : NSObject {
  weak var statusBar: @sil_weak NSStatusBar? { get }
  var length: CGFloat
  var menu: NSMenu?
  @available(macOS 10.10, *)
  var button: NSStatusBarButton? { get }
  @available(macOS 10.12, *)
  var behavior: NSStatusItem.Behavior
  @available(macOS 10.12, *)
  var isVisible: Bool
  @available(macOS 10.12, *)
  var autosaveName: NSStatusItem.AutosaveName!
}
extension NSStatusItem {
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.action instead")
  var action: Selector?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.doubleAction instead")
  var doubleAction: Selector?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.target instead")
  weak var target: @sil_weak AnyObject?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.title instead")
  var title: String?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.attributedTitle instead")
  @NSCopying var attributedTitle: NSAttributedString?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.image instead")
  var image: NSImage?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.alternateImage instead")
  var alternateImage: NSImage?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.enabled instead")
  var isEnabled: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.cell.highlightsBy instead")
  var highlightMode: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button.toolTip instead")
  var toolTip: String?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the receiver's button's -sendActionOn: instead")
  func sendAction(on mask: NSEvent.EventTypeMask) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the standard button property instead")
  var view: NSView?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the standard button instead which handles highlight drawing, making this method obsolete")
  func drawStatusBarBackground(in rect: NSRect, withHighlight highlight: Bool)
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use the menu property instead")
  func popUpMenu(_ menu: NSMenu)
}
