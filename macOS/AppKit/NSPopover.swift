
@available(macOS 10.7, *)
class NSPopover : NSResponder, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  @IBOutlet weak var delegate: @sil_weak NSPopoverDelegate?
  var behavior: NSPopover.Behavior
  var animates: Bool
  @IBOutlet var contentViewController: NSViewController?
  var contentSize: NSSize
  var isShown: Bool { get }
  @available(macOS 10.10, *)
  var isDetached: Bool { get }
  var positioningRect: NSRect
  func show(relativeTo positioningRect: NSRect, of positioningView: NSView, preferredEdge: NSRectEdge)
  @IBAction func performClose(_ sender: Any?)
  func close()
}
extension NSPopover {
  @available(macOS 10.7, *)
  class let closeReasonUserInfoKey: String
  struct CloseReason : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.7, *)
  class let willShowNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didShowNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let willCloseNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didCloseNotification: NSNotification.Name
  @available(macOS, introduced: 10.7, deprecated: 10.10)
  enum Appearance : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS, introduced: 10.7, deprecated: 10.10)
    case minimal
    @available(macOS, introduced: 10.7, deprecated: 10.10)
    case hud
  }
  enum Behavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case applicationDefined
    case transient
    case semitransient
  }
}
extension NSPopover.CloseReason {
  @available(macOS 10.7, *)
  static let standard: NSPopover.CloseReason
  @available(macOS 10.7, *)
  static let detachToWindow: NSPopover.CloseReason
}
protocol NSPopoverDelegate : NSObjectProtocol {
  @available(macOS 10.7, *)
  optional func popoverShouldClose(_ popover: NSPopover) -> Bool
  @available(macOS 10.10, *)
  optional func popoverShouldDetach(_ popover: NSPopover) -> Bool
  @available(macOS 10.10, *)
  optional func popoverDidDetach(_ popover: NSPopover)
  @available(macOS 10.7, *)
  optional func detachableWindow(for popover: NSPopover) -> NSWindow?
  optional func popoverWillShow(_ notification: Notification)
  optional func popoverDidShow(_ notification: Notification)
  optional func popoverWillClose(_ notification: Notification)
  optional func popoverDidClose(_ notification: Notification)
}
