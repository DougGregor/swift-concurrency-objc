
@available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
class NSDrawer : NSResponder, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  init(contentSize: NSSize, preferredEdge edge: NSRectEdge)
  unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  var contentView: NSView?
  var preferredEdge: NSRectEdge
  unowned(unsafe) var delegate: @sil_unmanaged NSDrawerDelegate?
  func open()
  func open(on edge: NSRectEdge)
  func close()
  func open(_ sender: Any?)
  func close(_ sender: Any?)
  func toggle(_ sender: Any?)
  var state: Int { get }
  var edge: NSRectEdge { get }
  var contentSize: NSSize
  var minContentSize: NSSize
  var maxContentSize: NSSize
  var leadingOffset: CGFloat
  var trailingOffset: CGFloat
}
extension NSWindow {
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  var drawers: [NSDrawer]? { get }
}
protocol NSDrawerDelegate : NSObjectProtocol {
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  optional func drawerShouldOpen(_ sender: NSDrawer) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  optional func drawerShouldClose(_ sender: NSDrawer) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  optional func drawerWillResizeContents(_ sender: NSDrawer, to contentSize: NSSize) -> NSSize
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  optional func drawerWillOpen(_ notification: Notification)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  @asyncHandler optional func drawerDidOpen(_ notification: Notification)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  optional func drawerWillClose(_ notification: Notification)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  @asyncHandler optional func drawerDidClose(_ notification: Notification)
}
extension NSDrawer {
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  class let willOpenNotification: NSNotification.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  class let didOpenNotification: NSNotification.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  class let willCloseNotification: NSNotification.Name
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
  class let didCloseNotification: NSNotification.Name
  enum State : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
    case closedState
    @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
    case openingState
    @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
    case openState
    @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Drawers are deprecated; consider using NSSplitViewController")
    case closingState
  }
}
