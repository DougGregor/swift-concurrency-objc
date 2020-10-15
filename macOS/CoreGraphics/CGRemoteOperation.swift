
typealias CGEventErr = CGError
typealias CGButtonCount = UInt32
typealias CGWheelCount = UInt32
typealias CGCharCode = UInt16
typealias CGKeyCode = UInt16
typealias CGScreenRefreshCallback = @convention(c) (UInt32, UnsafePointer<CGRect>, UnsafeMutableRawPointer?) -> Void
struct CGScreenUpdateOperation : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var refresh: CGScreenUpdateOperation { get }
  static var move: CGScreenUpdateOperation { get }
  static var reducedDirtyRectangleCount: CGScreenUpdateOperation { get }
}
struct CGScreenUpdateMoveDelta {
  var dX: Int32
  var dY: Int32
  init()
  init(dX: Int32, dY: Int32)
}
typealias CGScreenUpdateMoveCallback = @convention(c) (CGScreenUpdateMoveDelta, Int, UnsafePointer<CGRect>, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.0, *)
func CGWarpMouseCursorPosition(_ newCursorPosition: CGPoint) -> CGError
var kCGMouseDownEventMaskingDeadSwitchTimeout: Double { get }
@available(macOS 10.0, *)
func CGAssociateMouseAndMouseCursorPosition(_ connected: boolean_t) -> CGError
@available(macOS 10.8, *)
func CGWindowServerCreateServerPort() -> CFMachPort?
struct CGEventFilterMask : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var permitLocalMouseEvents: CGEventFilterMask { get }
  static var permitLocalKeyboardEvents: CGEventFilterMask { get }
  static var permitSystemDefinedEvents: CGEventFilterMask { get }
}
enum CGEventSuppressionState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case eventSuppressionStateSuppressionInterval
  case eventSuppressionStateRemoteMouseDrag
  case numberOfEventSuppressionStates
}
typealias CGRectCount = UInt32
