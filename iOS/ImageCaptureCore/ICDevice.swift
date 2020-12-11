
@available(iOS 13.0, *)
enum ICDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case camera
  case scanner
}
@available(iOS 13.0, *)
struct ICDeviceTransport : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceTransport {
  @available(iOS 13.0, *)
  static let transportTypeUSB: ICDeviceTransport
  @available(iOS 13.0, *)
  static let transportTypeMassStorage: ICDeviceTransport
  @available(iOS 10.0, *)
  static let transportTypeExFAT: ICDeviceTransport
  @available(iOS 13.0, *)
  static let transportTypeTCPIP: ICDeviceTransport
}
struct ICDeviceStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceStatus {
  @available(iOS 13.0, *)
  static let statusNotificationKey: ICDeviceStatus
}
struct ICDeviceCapability : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceCapability {
  @available(iOS 13.0, *)
  static let canEjectOrDisconnect: ICDeviceCapability
}
@available(iOS 13.0, *)
struct ICSessionOptions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICSessionOptions {
  @available(iOS 13.0, *)
  static let enumerationChronologicalOrder: ICSessionOptions
}
struct ICDeviceLocationOptions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDeviceLocationOptions {
}
@available(iOS 13.0, *)
class ICDevice : NSObject {
  @available(iOS 13.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceDelegate?
  @available(iOS 13.0, *)
  var type: ICDeviceType { get }
  @available(iOS 13.0, *)
  var capabilities: [String] { get }
  @available(iOS 13.0, *)
  var name: String? { get }
  @available(iOS 13.0, *)
  var productKind: String? { get }
  @available(iOS 13.0, *)
  var icon: CGImage? { get }
  @available(iOS 13.0, *)
  var transportType: String? { get }
  @available(iOS 13.0, *)
  var uuidString: String? { get }
  @available(iOS 13.0, *)
  var hasOpenSession: Bool { get }
  @available(iOS 13.0, *)
  var userData: NSMutableDictionary? { get }
  @available(iOS 13.0, *)
  var usbLocationID: Int32 { get }
  @available(iOS 13.0, *)
  var usbProductID: Int32 { get }
  @available(iOS 13.0, *)
  var usbVendorID: Int32 { get }
  @available(iOS 13.0, *)
  func requestOpenSession()
  @available(iOS 13.0, *)
  func requestCloseSession()
  @available(iOS 13.0, *)
  func requestEject()
  @available(iOS 13.0, *)
  func requestOpenSession(options: [ICSessionOptions : Any]? = nil, completion: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func requestOpenSession(options: [ICSessionOptions : Any]? = nil) async throws
  @available(iOS 13.0, *)
  func requestCloseSession(options: [ICSessionOptions : Any]? = nil, completion: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func requestCloseSession(options: [ICSessionOptions : Any]? = nil) async throws
  @available(iOS 13.0, *)
  func requestEject(completion: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func requestEject() async throws
}
protocol ICDeviceDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  func device(_ device: ICDevice, didCloseSessionWithError error: Error?)
  @available(iOS 13.0, *)
  func didRemove(_ device: ICDevice)
  @available(iOS 13.0, *)
  func device(_ device: ICDevice, didOpenSessionWithError error: Error?)
  @available(iOS 13.0, *)
  optional func deviceDidBecomeReady(_ device: ICDevice)
  @available(iOS 13.0, *)
  optional func device(_ device: ICDevice, didReceiveStatusInformation status: [ICDeviceStatus : Any])
  @available(iOS 13.0, *)
  optional func device(_ device: ICDevice, didEncounterError error: Error?)
  @available(iOS 13.0, *)
  optional func device(_ device: ICDevice, didEjectWithError error: Error?)
}
