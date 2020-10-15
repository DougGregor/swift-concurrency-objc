
extension UIPress {
  @available(iOS 9.0, *)
  enum Phase : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case began
    case changed
    case stationary
    case ended
    case cancelled
  }
  @available(iOS 9.0, *)
  enum PressType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case upArrow
    case downArrow
    case leftArrow
    case rightArrow
    case select
    case menu
    case playPause
  }
}
@available(iOS 9.0, *)
class UIPress : NSObject {
  var timestamp: TimeInterval { get }
  var phase: UIPress.Phase { get }
  var type: UIPress.PressType { get }
  var window: UIWindow? { get }
  var responder: UIResponder? { get }
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  var force: CGFloat { get }
  var key: UIKey? { get }
}
