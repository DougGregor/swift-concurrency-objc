
extension UIEvent {
  enum EventType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case touches
    case motion
    case remoteControl
    @available(iOS 9.0, *)
    case presses
    @available(iOS 13.4, *)
    case scroll
    @available(iOS 13.4, *)
    case hover
    @available(iOS 13.4, *)
    case transform
  }
  enum EventSubtype : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case motionShake
    case remoteControlPlay
    case remoteControlPause
    case remoteControlStop
    case remoteControlTogglePlayPause
    case remoteControlNextTrack
    case remoteControlPreviousTrack
    case remoteControlBeginSeekingBackward
    case remoteControlEndSeekingBackward
    case remoteControlBeginSeekingForward
    case remoteControlEndSeekingForward
  }
  @available(iOS 13.4, *)
  struct ButtonMask : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var primary: UIEvent.ButtonMask { get }
    static var secondary: UIEvent.ButtonMask { get }
  }
}
extension UIEvent.ButtonMask {
  @available(iOS 13.4, *)
  static func button(_ buttonNumber: Int) -> UIEvent.ButtonMask
}
@available(iOS 2.0, *)
class UIEvent : NSObject {
  @available(iOS 3.0, *)
  var type: UIEvent.EventType { get }
  @available(iOS 3.0, *)
  var subtype: UIEvent.EventSubtype { get }
  var timestamp: TimeInterval { get }
  @available(iOS 13.4, *)
  var modifierFlags: UIKeyModifierFlags { get }
  @available(iOS 13.4, *)
  var buttonMask: UIEvent.ButtonMask { get }
  var allTouches: Set<UITouch>? { get }
  func touches(for window: UIWindow) -> Set<UITouch>?
  func touches(for view: UIView) -> Set<UITouch>?
  @available(iOS 3.2, *)
  func touches(for gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(iOS 9.0, *)
  func coalescedTouches(for touch: UITouch) -> [UITouch]?
  @available(iOS 9.0, *)
  func predictedTouches(for touch: UITouch) -> [UITouch]?
}
