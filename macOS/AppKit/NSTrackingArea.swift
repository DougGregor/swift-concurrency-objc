
extension NSTrackingArea {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var mouseEnteredAndExited: NSTrackingArea.Options { get }
    static var mouseMoved: NSTrackingArea.Options { get }
    static var cursorUpdate: NSTrackingArea.Options { get }
    static var activeWhenFirstResponder: NSTrackingArea.Options { get }
    static var activeInKeyWindow: NSTrackingArea.Options { get }
    static var activeInActiveApp: NSTrackingArea.Options { get }
    static var activeAlways: NSTrackingArea.Options { get }
    static var assumeInside: NSTrackingArea.Options { get }
    static var inVisibleRect: NSTrackingArea.Options { get }
    static var enabledDuringMouseDrag: NSTrackingArea.Options { get }
  }
}
@available(macOS 10.5, *)
class NSTrackingArea : NSObject, NSCopying, NSCoding {
  init(rect: NSRect, options: NSTrackingArea.Options = [], owner: Any?, userInfo: [AnyHashable : Any]? = nil)
  var rect: NSRect { get }
  var options: NSTrackingArea.Options { get }
  weak var owner: @sil_weak AnyObject? { get }
  var userInfo: [AnyHashable : Any]? { get }
}
