
extension CGEvent {
  @available(macOS 10.4, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.4, *)
  /*not inherited*/ init?(source: CGEventSource?)
  @available(macOS 10.4, *)
  var data: CFData? { get }
  @available(macOS 10.4, *)
  /*not inherited*/ init?(withDataAllocator allocator: CFAllocator?, data: CFData?)
  @available(macOS 10.4, *)
  /*not inherited*/ init?(mouseEventSource source: CGEventSource?, mouseType: CGEventType, mouseCursorPosition: CGPoint, mouseButton: CGMouseButton)
  @available(macOS 10.4, *)
  /*not inherited*/ init?(keyboardEventSource source: CGEventSource?, virtualKey: CGKeyCode, keyDown: Bool)
  @available(macOS 10.13, *)
  /*not inherited*/ init?(scrollWheelEvent2Source source: CGEventSource?, units: CGScrollEventUnit, wheelCount: UInt32, wheel1: Int32, wheel2: Int32, wheel3: Int32)
  @available(macOS 10.4, *)
  func copy() -> CGEvent?
  @available(macOS 10.4, *)
  func setSource(_ source: CGEventSource?)
  @available(macOS 10.4, *)
  var type: CGEventType
  @available(macOS 10.4, *)
  var timestamp: CGEventTimestamp
  @available(macOS 10.4, *)
  var location: CGPoint
  @available(macOS 10.5, *)
  var unflippedLocation: CGPoint { get }
  @available(macOS 10.4, *)
  var flags: CGEventFlags
  @available(macOS 10.4, *)
  func keyboardGetUnicodeString(maxStringLength: Int, actualStringLength: UnsafeMutablePointer<Int>?, unicodeString: UnsafeMutablePointer<UniChar>?)
  @available(macOS 10.4, *)
  func keyboardSetUnicodeString(stringLength: Int, unicodeString: UnsafePointer<UniChar>?)
  @available(macOS 10.4, *)
  func getIntegerValueField(_ field: CGEventField) -> Int64
  @available(macOS 10.4, *)
  func setIntegerValueField(_ field: CGEventField, value: Int64)
  @available(macOS 10.4, *)
  func getDoubleValueField(_ field: CGEventField) -> Double
  @available(macOS 10.4, *)
  func setDoubleValueField(_ field: CGEventField, value: Double)
  @available(macOS 10.4, *)
  class func tapCreate(tap: CGEventTapLocation, place: CGEventTapPlacement, options: CGEventTapOptions, eventsOfInterest: CGEventMask, callback: CGEventTapCallBack, userInfo: UnsafeMutableRawPointer?) -> CFMachPort?
  @available(macOS 10.4, *)
  class func tapCreateForPSN(processSerialNumber: UnsafeMutableRawPointer, place: CGEventTapPlacement, options: CGEventTapOptions, eventsOfInterest: CGEventMask, callback: CGEventTapCallBack, userInfo: UnsafeMutableRawPointer?) -> CFMachPort?
  @available(macOS 10.11, *)
  class func tapCreateForPid(pid: pid_t, place: CGEventTapPlacement, options: CGEventTapOptions, eventsOfInterest: CGEventMask, callback: CGEventTapCallBack, userInfo: UnsafeMutableRawPointer?) -> CFMachPort?
  @available(macOS 10.4, *)
  class func tapEnable(tap: CFMachPort, enable: Bool)
  @available(macOS 10.4, *)
  class func tapIsEnabled(tap: CFMachPort) -> Bool
  @available(macOS 10.4, *)
  func tapPostEvent(_ proxy: CGEventTapProxy?)
  @available(macOS 10.4, *)
  func post(tap: CGEventTapLocation)
  @available(macOS 10.4, *)
  func postToPSN(processSerialNumber: UnsafeMutableRawPointer?)
  @available(macOS 10.11, *)
  func postToPid(_ pid: pid_t)
}
extension CGEventSource {
  @available(macOS 10.4, *)
  /*not inherited*/ init?(event: CGEvent?)
}
@available(macOS 10.4, *)
func CGGetEventTapList(_ maxNumberOfTaps: UInt32, _ tapList: UnsafeMutablePointer<CGEventTapInformation>?, _ eventTapCount: UnsafeMutablePointer<UInt32>?) -> CGError
@available(macOS 10.15, *)
func CGPreflightListenEventAccess() -> Bool
@available(macOS 10.15, *)
func CGRequestListenEventAccess() -> Bool
@available(macOS 10.15, *)
func CGPreflightPostEventAccess() -> Bool
@available(macOS 10.15, *)
func CGRequestPostEventAccess() -> Bool
