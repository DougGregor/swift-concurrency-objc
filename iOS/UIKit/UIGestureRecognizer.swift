
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
@available(iOS 3.2, *)
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
  @available(iOS 9.0, *)
  var allowedTouchTypes: [NSNumber]
  @available(iOS 9.0, *)
  var allowedPressTypes: [NSNumber]
  @available(iOS 9.2, *)
  var requiresExclusiveTouchType: Bool
  func require(toFail otherGestureRecognizer: UIGestureRecognizer)
  func location(in view: UIView?) -> CGPoint
  var numberOfTouches: Int { get }
  func location(ofTouch touchIndex: Int, in view: UIView?) -> CGPoint
  @available(iOS 11.0, *)
  var name: String?
  @available(iOS 13.4, *)
  var modifierFlags: UIKeyModifierFlags { get }
  @available(iOS 13.4, *)
  var buttonMask: UIEvent.ButtonMask { get }
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(iOS 3.2, *)
  optional func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
  @available(iOS 13.4, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive event: UIEvent) -> Bool
}
