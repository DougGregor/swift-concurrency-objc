
extension UITouch {
  enum Phase : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case began
    case moved
    case stationary
    case ended
    case cancelled
    @available(iOS 13.4, *)
    case regionEntered
    @available(iOS 13.4, *)
    case regionMoved
    @available(iOS 13.4, *)
    case regionExited
  }
  @available(iOS 9.0, *)
  enum TouchType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case direct
    case indirect
    @available(iOS 9.1, *)
    case pencil
    @available(iOS 9.1, *)
    static var stylus: UITouch.TouchType { get }
    @available(iOS 13.4, *)
    case indirectPointer
  }
  @available(iOS 9.1, *)
  struct Properties : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var force: UITouch.Properties { get }
    static var azimuth: UITouch.Properties { get }
    static var altitude: UITouch.Properties { get }
    static var location: UITouch.Properties { get }
  }
}
enum UIForceTouchCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case unavailable
  case available
}
@available(iOS 2.0, *)
class UITouch : NSObject {
  var timestamp: TimeInterval { get }
  var phase: UITouch.Phase { get }
  var tapCount: Int { get }
  @available(iOS 9.0, *)
  var type: UITouch.TouchType { get }
  @available(iOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(iOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func location(in view: UIView?) -> CGPoint
  func previousLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func preciseLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func precisePreviousLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.0, *)
  var force: CGFloat { get }
  @available(iOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(iOS 9.1, *)
  func azimuthAngle(in view: UIView?) -> CGFloat
  @available(iOS 9.1, *)
  func azimuthUnitVector(in view: UIView?) -> CGVector
  @available(iOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(iOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(iOS 9.1, *)
  var estimatedProperties: UITouch.Properties { get }
  @available(iOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouch.Properties { get }
}
