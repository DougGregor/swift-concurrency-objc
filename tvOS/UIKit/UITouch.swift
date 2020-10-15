
extension UITouch {
  enum Phase : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case began
    case moved
    case stationary
    case ended
    case cancelled
    @available(tvOS 13.4, *)
    case regionEntered
    @available(tvOS 13.4, *)
    case regionMoved
    @available(tvOS 13.4, *)
    case regionExited
  }
  @available(tvOS 9.0, *)
  enum TouchType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case direct
    case indirect
    @available(tvOS 9.1, *)
    case pencil
    @available(tvOS 9.1, *)
    static var stylus: UITouch.TouchType { get }
    @available(tvOS 13.4, *)
    case indirectPointer
  }
  @available(tvOS 9.1, *)
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
@available(tvOS 2.0, *)
class UITouch : NSObject {
  var timestamp: TimeInterval { get }
  var phase: UITouch.Phase { get }
  var tapCount: Int { get }
  @available(tvOS 9.0, *)
  var type: UITouch.TouchType { get }
  @available(tvOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(tvOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(tvOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func location(in view: UIView?) -> CGPoint
  func previousLocation(in view: UIView?) -> CGPoint
  @available(tvOS 9.1, *)
  func preciseLocation(in view: UIView?) -> CGPoint
  @available(tvOS 9.1, *)
  func precisePreviousLocation(in view: UIView?) -> CGPoint
  @available(tvOS 9.0, *)
  var force: CGFloat { get }
  @available(tvOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(tvOS 9.1, *)
  func azimuthAngle(in view: UIView?) -> CGFloat
  @available(tvOS 9.1, *)
  func azimuthUnitVector(in view: UIView?) -> CGVector
  @available(tvOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(tvOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(tvOS 9.1, *)
  var estimatedProperties: UITouch.Properties { get }
  @available(tvOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouch.Properties { get }
}
