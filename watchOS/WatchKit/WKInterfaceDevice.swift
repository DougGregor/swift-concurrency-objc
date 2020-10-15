
@available(watchOS 2.0, *)
enum WKHapticType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notification
  case directionUp
  case directionDown
  case success
  case failure
  case retry
  case start
  case stop
  case click
  @available(watchOS 7.0, *)
  case navigationLeftTurn
  @available(watchOS 7.0, *)
  case navigationRightTurn
  @available(watchOS 7.0, *)
  case navigationGenericManeuver
}
@available(watchOS 2.1, *)
enum WKInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leftToRight
  case rightToLeft
}
@available(watchOS 2.1, *)
enum WKInterfaceSemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case playback
  case spatial
  case forceLeftToRight
  case forceRightToLeft
}
@available(watchOS 3.0, *)
enum WKInterfaceDeviceWristLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case left
  case right
}
@available(watchOS 3.0, *)
enum WKInterfaceDeviceCrownOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case left
  case right
}
@available(watchOS 3.0, *)
enum WKWaterResistanceRating : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ipx7
  case wr50
}
@available(watchOS 4.0, *)
enum WKInterfaceDeviceBatteryState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case unplugged
  case charging
  case full
}
@available(watchOS 2.0, *)
class WKInterfaceDevice : NSObject {
  class func current() -> WKInterfaceDevice
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  @available(watchOS 4.0, *)
  var isBatteryMonitoringEnabled: Bool
  @available(watchOS 4.0, *)
  var batteryLevel: Float { get }
  @available(watchOS 4.0, *)
  var batteryState: WKInterfaceDeviceBatteryState { get }
  var preferredContentSizeCategory: String { get }
  @available(watchOS 2.1, *)
  var layoutDirection: WKInterfaceLayoutDirection { get }
  @available(watchOS 3.0, *)
  var wristLocation: WKInterfaceDeviceWristLocation { get }
  @available(watchOS 3.0, *)
  var crownOrientation: WKInterfaceDeviceCrownOrientation { get }
  @available(watchOS 2.1, *)
  class func interfaceLayoutDirection(for semanticContentAttribute: WKInterfaceSemanticContentAttribute) -> WKInterfaceLayoutDirection
  @available(watchOS 2.0, *)
  var systemVersion: String { get }
  @available(watchOS 2.0, *)
  var name: String { get }
  @available(watchOS 2.0, *)
  var model: String { get }
  @available(watchOS 2.0, *)
  var localizedModel: String { get }
  @available(watchOS 2.0, *)
  var systemName: String { get }
  @available(watchOS 3.0, *)
  var waterResistanceRating: WKWaterResistanceRating { get }
  @available(watchOS 6.1, *)
  var isWaterLockEnabled: Bool { get }
  @available(watchOS 6.0, *)
  var supportsAudioStreaming: Bool { get }
  @available(watchOS 6.2, *)
  var identifierForVendor: UUID? { get }
  @available(watchOS 2.0, *)
  func play(_ type: WKHapticType)
  @available(watchOS 6.1, *)
  func enableWaterLock()
}
