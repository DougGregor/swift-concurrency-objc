
extension CGEventSource {
  @available(macOS 10.4, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.4, *)
  /*not inherited*/ init?(stateID: CGEventSourceStateID)
  @available(macOS 10.4, *)
  var keyboardType: CGEventSourceKeyboardType
  @available(macOS 10.5, *)
  var pixelsPerLine: Double
  @available(macOS 10.4, *)
  var sourceStateID: CGEventSourceStateID { get }
  @available(macOS 10.4, *)
  class func buttonState(_ stateID: CGEventSourceStateID, button: CGMouseButton) -> Bool
  @available(macOS 10.4, *)
  class func keyState(_ stateID: CGEventSourceStateID, key: CGKeyCode) -> Bool
  @available(macOS 10.4, *)
  class func flagsState(_ stateID: CGEventSourceStateID) -> CGEventFlags
  @available(macOS 10.4, *)
  class func secondsSinceLastEventType(_ stateID: CGEventSourceStateID, eventType: CGEventType) -> CFTimeInterval
  @available(macOS 10.4, *)
  class func counterForEventType(_ stateID: CGEventSourceStateID, eventType: CGEventType) -> UInt32
  @available(macOS 10.4, *)
  var userData: Int64
  @available(macOS 10.4, *)
  func setLocalEventsFilterDuringSuppressionState(_ filter: CGEventFilterMask, state: CGEventSuppressionState)
  @available(macOS 10.4, *)
  func getLocalEventsFilterDuringSuppressionState(_ state: CGEventSuppressionState) -> CGEventFilterMask
  @available(macOS 10.4, *)
  var localEventsSuppressionInterval: CFTimeInterval
}
