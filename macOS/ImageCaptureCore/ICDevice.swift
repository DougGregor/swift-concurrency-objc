
@available(macOS 10.4, *)
enum ICDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case camera
  case scanner
}
@available(macOS 10.4, *)
enum ICDeviceLocationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case local
  case shared
  case bonjour
  case bluetooth
}
@available(macOS 10.4, *)
enum ICDeviceTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case camera
  case scanner
}
@available(macOS 10.4, *)
enum ICDeviceLocationTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case local
  case shared
  case bonjour
  case bluetooth
  case remote
}
@available(macOS 10.4, *)
struct ICDeviceTransport : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceTransport {
  @available(macOS 10.4, *)
  static let transportTypeUSB: ICDeviceTransport
  @available(macOS 10.4, *)
  static let transportTypeFireWire: ICDeviceTransport
  @available(macOS 10.4, *)
  static let transportTypeBluetooth: ICDeviceTransport
  @available(macOS 10.4, *)
  static let transportTypeMassStorage: ICDeviceTransport
  @available(macOS 10.4, *)
  static let transportTypeTCPIP: ICDeviceTransport
}
struct ICDeviceStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceStatus {
  @available(macOS 10.4, *)
  static let statusNotificationKey: ICDeviceStatus
  @available(macOS 10.4, *)
  static let statusCodeKey: ICDeviceStatus
  @available(macOS 10.4, *)
  static let localizedStatusNotificationKey: ICDeviceStatus
}
struct ICDeviceCapability : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceCapability {
  @available(macOS 10.4, *)
  static let canEjectOrDisconnect: ICDeviceCapability
}
@available(macOS 10.15, *)
struct ICSessionOptions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICSessionOptions {
  @available(macOS 10.15, *)
  static let enumerationChronologicalOrder: ICSessionOptions
}
struct ICDeviceLocationOptions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceLocationOptions {
  @available(macOS 10.4, *)
  static let descriptionUSB: ICDeviceLocationOptions
  @available(macOS 10.4, *)
  static let descriptionFireWire: ICDeviceLocationOptions
  @available(macOS 10.4, *)
  static let descriptionBluetooth: ICDeviceLocationOptions
  @available(macOS 10.4, *)
  static let descriptionMassStorage: ICDeviceLocationOptions
}
@available(macOS 10.4, *)
class ICDevice : NSObject {
  @available(macOS 10.4, *)
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceDelegate?
  @available(macOS 10.4, *)
  var type: ICDeviceType { get }
  @available(macOS 10.4, *)
  var capabilities: [String] { get }
  @available(macOS 10.4, *)
  var name: String? { get }
  @available(macOS 10.4, *)
  var productKind: String? { get }
  @available(macOS 10.4, *)
  var icon: CGImage? { get }
  @available(macOS 11.0, *)
  var systemSymbolName: String? { get }
  @available(macOS 10.4, *)
  var transportType: String? { get }
  @available(macOS 10.4, *)
  var uuidString: String? { get }
  @available(macOS 10.4, *)
  var locationDescription: String? { get }
  @available(macOS 10.4, *)
  var hasOpenSession: Bool { get }
  @available(macOS 10.4, *)
  var userData: NSMutableDictionary? { get }
  @available(macOS 10.4, *)
  var modulePath: String { get }
  @available(macOS 10.4, *)
  var moduleVersion: String? { get }
  @available(macOS 10.4, *)
  var serialNumberString: String? { get }
  @available(macOS 10.4, *)
  var usbLocationID: Int32 { get }
  @available(macOS 10.4, *)
  var usbProductID: Int32 { get }
  @available(macOS 10.4, *)
  var usbVendorID: Int32 { get }
  @available(macOS 10.4, *)
  func requestOpenSession()
  @available(macOS 10.4, *)
  func requestCloseSession()
  @available(macOS 10.4, *)
  func requestEject()
  @available(macOS 10.15, *)
  func requestOpenSession(options: [ICSessionOptions : Any]? = nil, completion: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func requestOpenSession(options: [ICSessionOptions : Any]? = nil) async throws
  @available(macOS 10.15, *)
  func requestCloseSession(options: [ICSessionOptions : Any]? = nil, completion: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func requestCloseSession(options: [ICSessionOptions : Any]? = nil) async throws
  @available(macOS 10.15, *)
  func requestEject(completion: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func requestEject() async throws
  @available(macOS 10.4, *)
  var autolaunchApplicationPath: String?
  @available(macOS 10.4, *)
  var isRemote: Bool { get }
  @available(macOS 10.4, *)
  var persistentIDString: String? { get }
  @available(macOS 10.4, *)
  func requestSendMessage(_ messageCode: UInt32, outData data: Data, maxReturnedDataSize: UInt32, sendMessageDelegate: Any, didSendMessageSelector selector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  func requestEjectOrDisconnect()
  @available(macOS, introduced: 10.4, deprecated: 10.15, message: "Requesting a device yield is no longer avaialble")
  func requestYield()
  @available(macOS, introduced: 10.4, deprecated: 10.15, message: "Module executable architecture is no longer available")
  var moduleExecutableArchitecture: Int32 { get }
}
protocol ICDeviceDelegate : NSObjectProtocol {
  @available(macOS 10.4, *)
  func device(_ device: ICDevice, didCloseSessionWithError error: Error?)
  @available(macOS 10.4, *)
  func didRemove(_ device: ICDevice)
  @available(macOS 10.4, *)
  func device(_ device: ICDevice, didOpenSessionWithError error: Error?)
  @available(macOS 10.4, *)
  optional func deviceDidBecomeReady(_ device: ICDevice)
  @available(macOS 10.4, *)
  optional func deviceDidChangeName(_ device: ICDevice)
  @available(macOS 10.4, *)
  optional func device(_ device: ICDevice, didReceiveStatusInformation status: [ICDeviceStatus : Any])
  @available(macOS 10.4, *)
  optional func device(_ device: ICDevice, didEncounterError error: Error?)
  @available(macOS 10.4, *)
  optional func device(_ device: ICDevice, didEjectWithError error: Error?)
  @available(macOS, introduced: 10.4, deprecated: 10.15, message: "Device sharing is no longer available")
  optional func deviceDidChangeSharingState(_ device: ICDevice)
}
