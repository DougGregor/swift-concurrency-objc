
extension UIGestureRecognizer {
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case possible
    case began
    case changed
    case ended
    case cancelled
    case failed
    static var recognized: UIGestureRecognizer.State { get }
  }
}
@available(tvOS 3.2, *)
class UIGestureRecognizer : NSObject {
  init(target: Any?, action: Selector?)
  convenience init?(coder: NSCoder)
  func addTarget(_ target: Any, action: Selector)
  func removeTarget(_ target: Any?, action: Selector?)
  var state: UIGestureRecognizer.State { get }
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var isEnabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  @available(tvOS 9.0, *)
  var allowedTouchTypes: [NSNumber]
  @available(tvOS 9.0, *)
  var allowedPressTypes: [NSNumber]
  @available(tvOS 9.2, *)
  var requiresExclusiveTouchType: Bool
  func require(toFail otherGestureRecognizer: UIGestureRecognizer)
  func location(in view: UIView?) -> CGPoint
  var numberOfTouches: Int { get }
  func location(ofTouch touchIndex: Int, in view: UIView?) -> CGPoint
  @available(tvOS 11.0, *)
  var name: String?
  @available(tvOS 13.4, *)
  var modifierFlags: UIKeyModifierFlags { get }
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(tvOS 3.2, *)
  optional func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
  @available(tvOS 13.4, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive event: UIEvent) -> Bool
}
