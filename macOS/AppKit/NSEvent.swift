
extension NSEvent {
  enum EventType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case leftMouseDown
    case leftMouseUp
    case rightMouseDown
    case rightMouseUp
    case mouseMoved
    case leftMouseDragged
    case rightMouseDragged
    case mouseEntered
    case mouseExited
    case keyDown
    case keyUp
    case flagsChanged
    case appKitDefined
    case systemDefined
    case applicationDefined
    case periodic
    case cursorUpdate
    case scrollWheel
    case tabletPoint
    case tabletProximity
    case otherMouseDown
    case otherMouseUp
    case otherMouseDragged
    @available(macOS 10.5, *)
    case gesture
    @available(macOS 10.5, *)
    case magnify
    @available(macOS 10.5, *)
    case swipe
    @available(macOS 10.5, *)
    case rotate
    @available(macOS 10.5, *)
    case beginGesture
    @available(macOS 10.5, *)
    case endGesture
    @available(macOS 10.8, *)
    case smartMagnify
    @available(macOS 10.8, *)
    case quickLook
    @available(macOS 10.10.3, *)
    case pressure
    @available(macOS 10.10, *)
    case directTouch
    @available(macOS 10.15, *)
    case changeMode
  }
  struct EventTypeMask : OptionSet {
    init(rawValue: UInt64)
    let rawValue: UInt64
    static var leftMouseDown: NSEvent.EventTypeMask { get }
    static var leftMouseUp: NSEvent.EventTypeMask { get }
    static var rightMouseDown: NSEvent.EventTypeMask { get }
    static var rightMouseUp: NSEvent.EventTypeMask { get }
    static var mouseMoved: NSEvent.EventTypeMask { get }
    static var leftMouseDragged: NSEvent.EventTypeMask { get }
    static var rightMouseDragged: NSEvent.EventTypeMask { get }
    static var mouseEntered: NSEvent.EventTypeMask { get }
    static var mouseExited: NSEvent.EventTypeMask { get }
    static var keyDown: NSEvent.EventTypeMask { get }
    static var keyUp: NSEvent.EventTypeMask { get }
    static var flagsChanged: NSEvent.EventTypeMask { get }
    static var appKitDefined: NSEvent.EventTypeMask { get }
    static var systemDefined: NSEvent.EventTypeMask { get }
    static var applicationDefined: NSEvent.EventTypeMask { get }
    static var periodic: NSEvent.EventTypeMask { get }
    static var cursorUpdate: NSEvent.EventTypeMask { get }
    static var scrollWheel: NSEvent.EventTypeMask { get }
    static var tabletPoint: NSEvent.EventTypeMask { get }
    static var tabletProximity: NSEvent.EventTypeMask { get }
    static var otherMouseDown: NSEvent.EventTypeMask { get }
    static var otherMouseUp: NSEvent.EventTypeMask { get }
    static var otherMouseDragged: NSEvent.EventTypeMask { get }
    @available(macOS 10.5, *)
    static var gesture: NSEvent.EventTypeMask { get }
    @available(macOS 10.5, *)
    static var magnify: NSEvent.EventTypeMask { get }
    @available(macOS 10.5, *)
    static var swipe: NSEvent.EventTypeMask { get }
    @available(macOS 10.5, *)
    static var rotate: NSEvent.EventTypeMask { get }
    @available(macOS 10.5, *)
    static var beginGesture: NSEvent.EventTypeMask { get }
    @available(macOS 10.5, *)
    static var endGesture: NSEvent.EventTypeMask { get }
    @available(macOS 10.8, *)
    static var smartMagnify: NSEvent.EventTypeMask { get }
    @available(macOS 10.10.3, *)
    static var pressure: NSEvent.EventTypeMask { get }
    @available(macOS 10.12.2, *)
    static var directTouch: NSEvent.EventTypeMask { get }
    @available(macOS 10.15, *)
    static var changeMode: NSEvent.EventTypeMask { get }
    static var any: NSEvent.EventTypeMask { get }
  }
  struct ModifierFlags : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var capsLock: NSEvent.ModifierFlags { get }
    static var shift: NSEvent.ModifierFlags { get }
    static var control: NSEvent.ModifierFlags { get }
    static var option: NSEvent.ModifierFlags { get }
    static var command: NSEvent.ModifierFlags { get }
    static var numericPad: NSEvent.ModifierFlags { get }
    static var help: NSEvent.ModifierFlags { get }
    static var function: NSEvent.ModifierFlags { get }
    static var deviceIndependentFlagsMask: NSEvent.ModifierFlags { get }
  }
  enum PointingDeviceType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case unknown
    case pen
    case cursor
    case eraser
  }
  struct ButtonMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var penTip: NSEvent.ButtonMask { get }
    static var penLowerSide: NSEvent.ButtonMask { get }
    static var penUpperSide: NSEvent.ButtonMask { get }
  }
  @available(macOS 10.7, *)
  struct Phase : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var began: NSEvent.Phase { get }
    static var stationary: NSEvent.Phase { get }
    static var changed: NSEvent.Phase { get }
    static var ended: NSEvent.Phase { get }
    static var cancelled: NSEvent.Phase { get }
    static var mayBegin: NSEvent.Phase { get }
  }
  @available(macOS 10.7, *)
  enum GestureAxis : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case horizontal
    case vertical
  }
  @available(macOS 10.7, *)
  struct SwipeTrackingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var lockDirection: NSEvent.SwipeTrackingOptions { get }
    static var clampGestureAmount: NSEvent.SwipeTrackingOptions { get }
  }
  enum EventSubtype : Int16 {
    init?(rawValue: Int16)
    var rawValue: Int16 { get }
    case windowExposed
    case applicationActivated
    case applicationDeactivated
    case windowMoved
    case screenChanged
    static var powerOff: NSEvent.EventSubtype { get }
    static var mouseEvent: NSEvent.EventSubtype { get }
    static var tabletPoint: NSEvent.EventSubtype { get }
    static var tabletProximity: NSEvent.EventSubtype { get }
    @available(macOS 10.6, *)
    case touch
  }
  @available(macOS 10.10.3, *)
  enum PressureBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case primaryDefault
    case primaryClick
    case primaryGeneric
    case primaryAccelerator
    case primaryDeepClick
    case primaryDeepDrag
  }
}
extension NSEvent.EventTypeMask {
  /*not inherited*/ init(type: NSEvent.EventType)
}
class NSEvent : NSObject, NSCopying, NSCoding {
  var type: NSEvent.EventType { get }
  var modifierFlags: NSEvent.ModifierFlags { get }
  var timestamp: TimeInterval { get }
  weak var window: @sil_weak NSWindow? { get }
  var windowNumber: Int { get }
  @available(macOS, introduced: 10.0, deprecated: 10.12, message: "This method always returns nil. If you need access to the current drawing context, use [NSGraphicsContext currentContext] inside of a draw operation.")
  var context: NSGraphicsContext? { get }
  var clickCount: Int { get }
  var buttonNumber: Int { get }
  var eventNumber: Int { get }
  var pressure: Float { get }
  var locationInWindow: NSPoint { get }
  var deltaX: CGFloat { get }
  var deltaY: CGFloat { get }
  var deltaZ: CGFloat { get }
  @available(macOS 10.7, *)
  var hasPreciseScrollingDeltas: Bool { get }
  @available(macOS 10.7, *)
  var scrollingDeltaX: CGFloat { get }
  @available(macOS 10.7, *)
  var scrollingDeltaY: CGFloat { get }
  @available(macOS 10.7, *)
  var momentumPhase: NSEvent.Phase { get }
  @available(macOS 10.7, *)
  var isDirectionInvertedFromDevice: Bool { get }
  var characters: String? { get }
  var charactersIgnoringModifiers: String? { get }
  @available(macOS 10.15, *)
  func characters(byApplyingModifiers modifiers: NSEvent.ModifierFlags) -> String?
  var isARepeat: Bool { get }
  var keyCode: UInt16 { get }
  var trackingNumber: Int { get }
  var userData: UnsafeMutableRawPointer? { get }
  @available(macOS 10.5, *)
  var trackingArea: NSTrackingArea? { get }
  var subtype: NSEvent.EventSubtype { get }
  var data1: Int { get }
  var data2: Int { get }
  @available(macOS 10.5, *)
  var eventRef: UnsafeRawPointer? { get }
  @available(macOS 10.5, *)
  /*not inherited*/ init?(eventRef: UnsafeRawPointer)
  @available(macOS 10.5, *)
  var cgEvent: CGEvent? { get }
  @available(macOS 10.5, *)
  /*not inherited*/ init?(cgEvent: CGEvent)
  @available(macOS 10.5, *)
  class var isMouseCoalescingEnabled: Bool
  @available(macOS 10.5, *)
  var magnification: CGFloat { get }
  var deviceID: Int { get }
  var rotation: Float { get }
  var absoluteX: Int { get }
  var absoluteY: Int { get }
  var absoluteZ: Int { get }
  var buttonMask: NSEvent.ButtonMask { get }
  var tilt: NSPoint { get }
  var tangentialPressure: Float { get }
  var vendorDefined: Any { get }
  var vendorID: Int { get }
  var tabletID: Int { get }
  var pointingDeviceID: Int { get }
  var systemTabletID: Int { get }
  var vendorPointingDeviceType: Int { get }
  var pointingDeviceSerialNumber: Int { get }
  var uniqueID: UInt64 { get }
  var capabilityMask: Int { get }
  var pointingDeviceType: NSEvent.PointingDeviceType { get }
  var isEnteringProximity: Bool { get }
  @available(macOS 10.6, *)
  func touches(matching phase: NSTouch.Phase, in view: NSView?) -> Set<NSTouch>
  @available(macOS 10.12, *)
  func allTouches() -> Set<NSTouch>
  @available(macOS 10.12, *)
  func touches(for view: NSView) -> Set<NSTouch>
  @available(macOS 10.12.2, *)
  func coalescedTouches(for touch: NSTouch) -> [NSTouch]
  @available(macOS 10.7, *)
  var phase: NSEvent.Phase { get }
  @available(macOS 10.10.3, *)
  var stage: Int { get }
  @available(macOS 10.10.3, *)
  var stageTransition: CGFloat { get }
  @available(macOS 10.10.3, *)
  var associatedEventsMask: NSEvent.EventTypeMask { get }
  @available(macOS 10.11, *)
  var pressureBehavior: NSEvent.PressureBehavior { get }
  @available(macOS 10.7, *)
  class var isSwipeTrackingFromScrollEventsEnabled: Bool { get }
  @available(macOS 10.7, *)
  func trackSwipeEvent(options: NSEvent.SwipeTrackingOptions = [], dampenAmountThresholdMin minDampenThreshold: CGFloat, max maxDampenThreshold: CGFloat, usingHandler trackingHandler: @escaping (CGFloat, NSEvent.Phase, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  class func startPeriodicEvents(afterDelay delay: TimeInterval, withPeriod period: TimeInterval)
  class func stopPeriodicEvents()
  class func mouseEvent(with type: NSEvent.EventType, location: NSPoint, modifierFlags flags: NSEvent.ModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context unusedPassNil: NSGraphicsContext?, eventNumber eNum: Int, clickCount cNum: Int, pressure: Float) -> NSEvent?
  class func keyEvent(with type: NSEvent.EventType, location: NSPoint, modifierFlags flags: NSEvent.ModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context unusedPassNil: NSGraphicsContext?, characters keys: String, charactersIgnoringModifiers ukeys: String, isARepeat flag: Bool, keyCode code: UInt16) -> NSEvent?
  class func enterExitEvent(with type: NSEvent.EventType, location: NSPoint, modifierFlags flags: NSEvent.ModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context unusedPassNil: NSGraphicsContext?, eventNumber eNum: Int, trackingNumber tNum: Int, userData data: UnsafeMutableRawPointer?) -> NSEvent?
  class func otherEvent(with type: NSEvent.EventType, location: NSPoint, modifierFlags flags: NSEvent.ModifierFlags, timestamp time: TimeInterval, windowNumber wNum: Int, context unusedPassNil: NSGraphicsContext?, subtype: Int16, data1 d1: Int, data2 d2: Int) -> NSEvent?
  class var mouseLocation: NSPoint { get }
  @available(macOS 10.6, *)
  class var modifierFlags: NSEvent.ModifierFlags { get }
  @available(macOS 10.6, *)
  class var pressedMouseButtons: Int { get }
  @available(macOS 10.6, *)
  class var doubleClickInterval: TimeInterval { get }
  @available(macOS 10.6, *)
  class var keyRepeatDelay: TimeInterval { get }
  @available(macOS 10.6, *)
  class var keyRepeatInterval: TimeInterval { get }
  @available(macOS 10.6, *)
  class func addGlobalMonitorForEvents(matching mask: NSEvent.EventTypeMask, handler block: @escaping (NSEvent) -> Void) -> Any?
  @available(macOS 10.6, *)
  class func addLocalMonitorForEvents(matching mask: NSEvent.EventTypeMask, handler block: @escaping (NSEvent) -> NSEvent?) -> Any?
  @available(macOS 10.6, *)
  class func removeMonitor(_ eventMonitor: Any)
}

extension NSEvent {
  struct SpecialKey : RawRepresentable, Equatable, Hashable {
    var unicodeScalar: Unicode.Scalar { get }
  }
  var specialKey: NSEvent.SpecialKey? { get }
}

extension NSEvent.SpecialKey {
  static let upArrow: NSEvent.SpecialKey
  static let downArrow: NSEvent.SpecialKey
  static let leftArrow: NSEvent.SpecialKey
  static let rightArrow: NSEvent.SpecialKey
  static let f1: NSEvent.SpecialKey
  static let f2: NSEvent.SpecialKey
  static let f3: NSEvent.SpecialKey
  static let f4: NSEvent.SpecialKey
  static let f5: NSEvent.SpecialKey
  static let f6: NSEvent.SpecialKey
  static let f7: NSEvent.SpecialKey
  static let f8: NSEvent.SpecialKey
  static let f9: NSEvent.SpecialKey
  static let f10: NSEvent.SpecialKey
  static let f11: NSEvent.SpecialKey
  static let f12: NSEvent.SpecialKey
  static let f13: NSEvent.SpecialKey
  static let f14: NSEvent.SpecialKey
  static let f15: NSEvent.SpecialKey
  static let f16: NSEvent.SpecialKey
  static let f17: NSEvent.SpecialKey
  static let f18: NSEvent.SpecialKey
  static let f19: NSEvent.SpecialKey
  static let f20: NSEvent.SpecialKey
  static let f21: NSEvent.SpecialKey
  static let f22: NSEvent.SpecialKey
  static let f23: NSEvent.SpecialKey
  static let f24: NSEvent.SpecialKey
  static let f25: NSEvent.SpecialKey
  static let f26: NSEvent.SpecialKey
  static let f27: NSEvent.SpecialKey
  static let f28: NSEvent.SpecialKey
  static let f29: NSEvent.SpecialKey
  static let f30: NSEvent.SpecialKey
  static let f31: NSEvent.SpecialKey
  static let f32: NSEvent.SpecialKey
  static let f33: NSEvent.SpecialKey
  static let f34: NSEvent.SpecialKey
  static let f35: NSEvent.SpecialKey
  static let insert: NSEvent.SpecialKey
  static let deleteForward: NSEvent.SpecialKey
  static let home: NSEvent.SpecialKey
  static let begin: NSEvent.SpecialKey
  static let end: NSEvent.SpecialKey
  static let pageUp: NSEvent.SpecialKey
  static let pageDown: NSEvent.SpecialKey
  static let printScreen: NSEvent.SpecialKey
  static let scrollLock: NSEvent.SpecialKey
  static let pause: NSEvent.SpecialKey
  static let sysReq: NSEvent.SpecialKey
  static let `break`: NSEvent.SpecialKey
  static let reset: NSEvent.SpecialKey
  static let stop: NSEvent.SpecialKey
  static let menu: NSEvent.SpecialKey
  static let user: NSEvent.SpecialKey
  static let system: NSEvent.SpecialKey
  static let print: NSEvent.SpecialKey
  static let clearLine: NSEvent.SpecialKey
  static let clearDisplay: NSEvent.SpecialKey
  static let insertLine: NSEvent.SpecialKey
  static let deleteLine: NSEvent.SpecialKey
  static let insertCharacter: NSEvent.SpecialKey
  static let deleteCharacter: NSEvent.SpecialKey
  static let prev: NSEvent.SpecialKey
  static let next: NSEvent.SpecialKey
  static let select: NSEvent.SpecialKey
  static let execute: NSEvent.SpecialKey
  static let undo: NSEvent.SpecialKey
  static let redo: NSEvent.SpecialKey
  static let find: NSEvent.SpecialKey
  static let help: NSEvent.SpecialKey
  static let modeSwitch: NSEvent.SpecialKey
  static let enter: NSEvent.SpecialKey
  static let backspace: NSEvent.SpecialKey
  static let tab: NSEvent.SpecialKey
  static let newline: NSEvent.SpecialKey
  static let formFeed: NSEvent.SpecialKey
  static let carriageReturn: NSEvent.SpecialKey
  static let backTab: NSEvent.SpecialKey
  static let delete: NSEvent.SpecialKey
  static let lineSeparator: NSEvent.SpecialKey
  static let paragraphSeparator: NSEvent.SpecialKey
}
var NSUpArrowFunctionKey: Int { get }
var NSDownArrowFunctionKey: Int { get }
var NSLeftArrowFunctionKey: Int { get }
var NSRightArrowFunctionKey: Int { get }
var NSF1FunctionKey: Int { get }
var NSF2FunctionKey: Int { get }
var NSF3FunctionKey: Int { get }
var NSF4FunctionKey: Int { get }
var NSF5FunctionKey: Int { get }
var NSF6FunctionKey: Int { get }
var NSF7FunctionKey: Int { get }
var NSF8FunctionKey: Int { get }
var NSF9FunctionKey: Int { get }
var NSF10FunctionKey: Int { get }
var NSF11FunctionKey: Int { get }
var NSF12FunctionKey: Int { get }
var NSF13FunctionKey: Int { get }
var NSF14FunctionKey: Int { get }
var NSF15FunctionKey: Int { get }
var NSF16FunctionKey: Int { get }
var NSF17FunctionKey: Int { get }
var NSF18FunctionKey: Int { get }
var NSF19FunctionKey: Int { get }
var NSF20FunctionKey: Int { get }
var NSF21FunctionKey: Int { get }
var NSF22FunctionKey: Int { get }
var NSF23FunctionKey: Int { get }
var NSF24FunctionKey: Int { get }
var NSF25FunctionKey: Int { get }
var NSF26FunctionKey: Int { get }
var NSF27FunctionKey: Int { get }
var NSF28FunctionKey: Int { get }
var NSF29FunctionKey: Int { get }
var NSF30FunctionKey: Int { get }
var NSF31FunctionKey: Int { get }
var NSF32FunctionKey: Int { get }
var NSF33FunctionKey: Int { get }
var NSF34FunctionKey: Int { get }
var NSF35FunctionKey: Int { get }
var NSInsertFunctionKey: Int { get }
var NSDeleteFunctionKey: Int { get }
var NSHomeFunctionKey: Int { get }
var NSBeginFunctionKey: Int { get }
var NSEndFunctionKey: Int { get }
var NSPageUpFunctionKey: Int { get }
var NSPageDownFunctionKey: Int { get }
var NSPrintScreenFunctionKey: Int { get }
var NSScrollLockFunctionKey: Int { get }
var NSPauseFunctionKey: Int { get }
var NSSysReqFunctionKey: Int { get }
var NSBreakFunctionKey: Int { get }
var NSResetFunctionKey: Int { get }
var NSStopFunctionKey: Int { get }
var NSMenuFunctionKey: Int { get }
var NSUserFunctionKey: Int { get }
var NSSystemFunctionKey: Int { get }
var NSPrintFunctionKey: Int { get }
var NSClearLineFunctionKey: Int { get }
var NSClearDisplayFunctionKey: Int { get }
var NSInsertLineFunctionKey: Int { get }
var NSDeleteLineFunctionKey: Int { get }
var NSInsertCharFunctionKey: Int { get }
var NSDeleteCharFunctionKey: Int { get }
var NSPrevFunctionKey: Int { get }
var NSNextFunctionKey: Int { get }
var NSSelectFunctionKey: Int { get }
var NSExecuteFunctionKey: Int { get }
var NSUndoFunctionKey: Int { get }
var NSRedoFunctionKey: Int { get }
var NSFindFunctionKey: Int { get }
var NSHelpFunctionKey: Int { get }
var NSModeSwitchFunctionKey: Int { get }
