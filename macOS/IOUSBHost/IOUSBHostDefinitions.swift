
typealias IOUSBHostCompletionHandler = (IOReturn, Int) -> Void
typealias IOUSBHostTime = UInt64
struct IOUSBHostIsochronousFrame {
  var status: IOReturn
  var requestCount: UInt32
  var completeCount: UInt32
  var reserved: UInt32
  var timeStamp: IOUSBHostTime
  init()
  init(status: IOReturn, requestCount: UInt32, completeCount: UInt32, reserved: UInt32, timeStamp: IOUSBHostTime)
}
typealias IOUSBHostIsochronousCompletionHandler = (IOReturn, UnsafeMutablePointer<IOUSBHostIsochronousFrame>) -> Void
let IOUSBHostErrorDomain: String
enum IOUSBHostAbortOption : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case asynchronous
  case synchronous
}
struct IOUSBHostObjectInitOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var deviceCapture: IOUSBHostObjectInitOptions { get }
}
func IOUSBHostDeviceRequestType(_ direction: tIOUSBDeviceRequestDirectionValue, _ type: tIOUSBDeviceRequestTypeValue, _ recipient: tIOUSBDeviceRequestRecipientValue) -> UInt8
struct IOUSBHostMatchingPropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension IOUSBHostMatchingPropertyKey {
  static let vendorID: IOUSBHostMatchingPropertyKey
  static let productID: IOUSBHostMatchingPropertyKey
  static let productIDMask: IOUSBHostMatchingPropertyKey
  static let productIDArray: IOUSBHostMatchingPropertyKey
  static let interfaceNumber: IOUSBHostMatchingPropertyKey
  static let configurationValue: IOUSBHostMatchingPropertyKey
  static let deviceReleaseNumber: IOUSBHostMatchingPropertyKey
  static let interfaceClass: IOUSBHostMatchingPropertyKey
  static let interfaceSubClass: IOUSBHostMatchingPropertyKey
  static let interfaceProtocol: IOUSBHostMatchingPropertyKey
  static let deviceClass: IOUSBHostMatchingPropertyKey
  static let deviceSubClass: IOUSBHostMatchingPropertyKey
  static let deviceProtocol: IOUSBHostMatchingPropertyKey
  static let speed: IOUSBHostMatchingPropertyKey
}
typealias IOUSBHostPropertyKey = NSString
let IOUSBHostPropertyKeyLocationID: String
struct IOUSBHostDevicePropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension IOUSBHostDevicePropertyKey {
  static let vendorString: IOUSBHostDevicePropertyKey
  static let serialNumberString: IOUSBHostDevicePropertyKey
  static let containerID: IOUSBHostDevicePropertyKey
  static let currentConfiguration: IOUSBHostDevicePropertyKey
}
struct IOUSBHostInterfacePropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension IOUSBHostInterfacePropertyKey {
  static let alternateSetting: IOUSBHostInterfacePropertyKey
}
let IOUSBHostDefaultControlCompletionTimeout: TimeInterval
