
class CGEvent : _CFObject {
}
enum CGMouseButton : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case left
  case right
  case center
}
enum CGScrollEventUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case pixel
  case line
}
enum CGMomentumScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case begin
  case continuous
  case end
}
enum CGScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case began
  case changed
  case ended
  case cancelled
  case mayBegin
}
enum CGGesturePhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case began
  case changed
  case ended
  case cancelled
  case mayBegin
}
struct CGEventFlags : OptionSet {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var maskAlphaShift: CGEventFlags { get }
  static var maskShift: CGEventFlags { get }
  static var maskControl: CGEventFlags { get }
  static var maskAlternate: CGEventFlags { get }
  static var maskCommand: CGEventFlags { get }
  static var maskHelp: CGEventFlags { get }
  static var maskSecondaryFn: CGEventFlags { get }
  static var maskNumericPad: CGEventFlags { get }
  static var maskNonCoalesced: CGEventFlags { get }
}
enum CGEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case null
  case leftMouseDown
  case leftMouseUp
  case rightMouseDown
  case rightMouseUp
  case mouseMoved
  case leftMouseDragged
  case rightMouseDragged
  case keyDown
  case keyUp
  case flagsChanged
  case scrollWheel
  case tabletPointer
  case tabletProximity
  case otherMouseDown
  case otherMouseUp
  case otherMouseDragged
  case tapDisabledByTimeout
  case tapDisabledByUserInput
}
typealias CGEventTimestamp = UInt64
enum CGEventField : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case mouseEventNumber
  case mouseEventClickState
  case mouseEventPressure
  case mouseEventButtonNumber
  case mouseEventDeltaX
  case mouseEventDeltaY
  case mouseEventInstantMouser
  case mouseEventSubtype
  case keyboardEventAutorepeat
  case keyboardEventKeycode
  case keyboardEventKeyboardType
  case scrollWheelEventDeltaAxis1
  case scrollWheelEventDeltaAxis2
  case scrollWheelEventDeltaAxis3
  case scrollWheelEventFixedPtDeltaAxis1
  case scrollWheelEventFixedPtDeltaAxis2
  case scrollWheelEventFixedPtDeltaAxis3
  case scrollWheelEventPointDeltaAxis1
  case scrollWheelEventPointDeltaAxis2
  case scrollWheelEventPointDeltaAxis3
  case scrollWheelEventScrollPhase
  case scrollWheelEventScrollCount
  case scrollWheelEventMomentumPhase
  case scrollWheelEventInstantMouser
  case tabletEventPointX
  case tabletEventPointY
  case tabletEventPointZ
  case tabletEventPointButtons
  case tabletEventPointPressure
  case tabletEventTiltX
  case tabletEventTiltY
  case tabletEventRotation
  case tabletEventTangentialPressure
  case tabletEventDeviceID
  case tabletEventVendor1
  case tabletEventVendor2
  case tabletEventVendor3
  case tabletProximityEventVendorID
  case tabletProximityEventTabletID
  case tabletProximityEventPointerID
  case tabletProximityEventDeviceID
  case tabletProximityEventSystemTabletID
  case tabletProximityEventVendorPointerType
  case tabletProximityEventVendorPointerSerialNumber
  case tabletProximityEventVendorUniqueID
  case tabletProximityEventCapabilityMask
  case tabletProximityEventPointerType
  case tabletProximityEventEnterProximity
  case eventTargetProcessSerialNumber
  case eventTargetUnixProcessID
  case eventSourceUnixProcessID
  case eventSourceUserData
  case eventSourceUserID
  case eventSourceGroupID
  case eventSourceStateID
  case scrollWheelEventIsContinuous
  case mouseEventWindowUnderMousePointer
  case mouseEventWindowUnderMousePointerThatCanHandleThisEvent
  case eventUnacceleratedPointerMovementX
  case eventUnacceleratedPointerMovementY
}
enum CGEventMouseSubtype : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case defaultType
  case tabletPoint
  case tabletProximity
}
enum CGEventTapLocation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case cghidEventTap
  case cgSessionEventTap
  case cgAnnotatedSessionEventTap
}
enum CGEventTapPlacement : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case headInsertEventTap
  case tailAppendEventTap
}
enum CGEventTapOptions : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case defaultTap
  case listenOnly
}
typealias CGEventMask = UInt64
typealias CGEventTapProxy = OpaquePointer
typealias CGEventTapCallBack = @convention(c) (CGEventTapProxy, CGEventType, CGEvent, UnsafeMutableRawPointer?) -> Unmanaged<CGEvent>?
var kCGNotifyEventTapAdded: String { get }
var kCGNotifyEventTapRemoved: String { get }
struct __CGEventTapInformation {
  var eventTapID: UInt32
  var tapPoint: CGEventTapLocation
  var options: CGEventTapOptions
  var eventsOfInterest: CGEventMask
  var tappingProcess: pid_t
  var processBeingTapped: pid_t
  var enabled: Bool
  var minUsecLatency: Float
  var avgUsecLatency: Float
  var maxUsecLatency: Float
  init()
  init(eventTapID: UInt32, tapPoint: CGEventTapLocation, options: CGEventTapOptions, eventsOfInterest: CGEventMask, tappingProcess: pid_t, processBeingTapped: pid_t, enabled: Bool, minUsecLatency: Float, avgUsecLatency: Float, maxUsecLatency: Float)
}
typealias CGEventTapInformation = __CGEventTapInformation
class CGEventSource : _CFObject {
}
enum CGEventSourceStateID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case privateState
  case combinedSessionState
  case hidSystemState
}
typealias CGEventSourceKeyboardType = UInt32
