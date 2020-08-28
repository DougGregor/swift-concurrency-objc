
@available(iOS 13.4, *)
enum UIScrollType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case discrete
  case continuous
}
@available(iOS 13.4, *)
struct UIScrollTypeMask : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var discrete: UIScrollTypeMask { get }
  static var continuous: UIScrollTypeMask { get }
  static var all: UIScrollTypeMask { get }
}
@available(iOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  var minimumNumberOfTouches: Int
  var maximumNumberOfTouches: Int
  func translation(in view: UIView?) -> CGPoint
  func setTranslation(_ translation: CGPoint, in view: UIView?)
  func velocity(in view: UIView?) -> CGPoint
  @available(iOS 13.4, *)
  var allowedScrollTypesMask: UIScrollTypeMask
}
