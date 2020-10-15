
extension NSGestureRecognizer {
  @available(macOS 10.10, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case possible
    case began
    case changed
    case ended
    case cancelled
    case failed
    static var recognized: NSGestureRecognizer.State { get }
  }
}
@available(macOS 10.10, *)
class NSGestureRecognizer : NSObject, NSCoding {
  init(target: Any?, action: Selector?)
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var state: NSGestureRecognizer.State { get }
  weak var delegate: @sil_weak NSGestureRecognizerDelegate?
  var isEnabled: Bool
  var view: NSView? { get }
  @available(macOS 10.11, *)
  var pressureConfiguration: NSPressureConfiguration
  var delaysPrimaryMouseButtonEvents: Bool
  var delaysSecondaryMouseButtonEvents: Bool
  var delaysOtherMouseButtonEvents: Bool
  var delaysKeyEvents: Bool
  var delaysMagnificationEvents: Bool
  var delaysRotationEvents: Bool
  func location(in view: NSView?) -> NSPoint
}
extension NSGestureRecognizer {
  @available(macOS 10.12.2, *)
  var allowedTouchTypes: NSTouch.TouchTypeMask
}
protocol NSGestureRecognizerDelegate : NSObjectProtocol {
  @available(macOS 10.11, *)
  optional func gestureRecognizer(_ gestureRecognizer: NSGestureRecognizer, shouldAttemptToRecognizeWith event: NSEvent) -> Bool
  @available(macOS 10.10, *)
  optional func gestureRecognizerShouldBegin(_ gestureRecognizer: NSGestureRecognizer) -> Bool
  @available(macOS 10.10, *)
  optional func gestureRecognizer(_ gestureRecognizer: NSGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: NSGestureRecognizer) -> Bool
  @available(macOS 10.10, *)
  optional func gestureRecognizer(_ gestureRecognizer: NSGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: NSGestureRecognizer) -> Bool
  @available(macOS 10.10, *)
  optional func gestureRecognizer(_ gestureRecognizer: NSGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: NSGestureRecognizer) -> Bool
  @available(macOS 10.12.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: NSGestureRecognizer, shouldReceive touch: NSTouch) -> Bool
}
extension NSGestureRecognizer {
  func reset()
  func canPrevent(_ preventedGestureRecognizer: NSGestureRecognizer) -> Bool
  func canBePrevented(by preventingGestureRecognizer: NSGestureRecognizer) -> Bool
  func shouldRequireFailure(of otherGestureRecognizer: NSGestureRecognizer) -> Bool
  func shouldBeRequiredToFail(by otherGestureRecognizer: NSGestureRecognizer) -> Bool
  func mouseDown(with event: NSEvent)
  func rightMouseDown(with event: NSEvent)
  func otherMouseDown(with event: NSEvent)
  func mouseUp(with event: NSEvent)
  func rightMouseUp(with event: NSEvent)
  func otherMouseUp(with event: NSEvent)
  func mouseDragged(with event: NSEvent)
  func rightMouseDragged(with event: NSEvent)
  func otherMouseDragged(with event: NSEvent)
  func keyDown(with event: NSEvent)
  func keyUp(with event: NSEvent)
  func flagsChanged(with event: NSEvent)
  func tabletPoint(with event: NSEvent)
  func magnify(with event: NSEvent)
  func rotate(with event: NSEvent)
  @available(macOS 10.10.3, *)
  func pressureChange(with event: NSEvent)
  @available(macOS 10.12.2, *)
  func touchesBegan(with event: NSEvent)
  @available(macOS 10.12.2, *)
  func touchesMoved(with event: NSEvent)
  @available(macOS 10.12.2, *)
  func touchesEnded(with event: NSEvent)
  @available(macOS 10.12.2, *)
  func touchesCancelled(with event: NSEvent)
}
