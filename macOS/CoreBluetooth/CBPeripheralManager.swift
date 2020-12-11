
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "Use CBManagerAuthorization instead")
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(macOS, introduced: 10.9, deprecated: 10.13, message: "Use CBManagerState instead")
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(macOS 10.9, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}
@available(macOS 10.9, *)
class CBPeripheralManager : CBManager {
  weak var delegate: @sil_weak CBPeripheralManagerDelegate?
  var isAdvertising: Bool { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "Use CBManagerAuthorization instead")
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  convenience init(delegate: CBPeripheralManagerDelegate?, queue: DispatchQueue?)
  @available(macOS 10.9, *)
  init(delegate: CBPeripheralManagerDelegate?, queue: DispatchQueue?, options: [String : Any]? = nil)
  func startAdvertising(_ advertisementData: [String : Any]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(_ latency: CBPeripheralManagerConnectionLatency, for central: CBCentral)
  func add(_ service: CBMutableService)
  func remove(_ service: CBMutableService)
  func removeAllServices()
  func respond(to request: CBATTRequest, withResult result: CBATTError.Code)
  func updateValue(_ value: Data, for characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  @available(macOS 10.14, *)
  func publishL2CAPChannel(withEncryption encryptionRequired: Bool)
  @available(macOS 10.14, *)
  func unpublishL2CAPChannel(_ PSM: CBL2CAPPSM)
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String : Any])
  @available(macOS 10.9, *)
  optional func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest])
  @available(macOS 10.9, *)
  optional func peripheralManagerIsReady(toUpdateSubscribers peripheral: CBPeripheralManager)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didPublishL2CAPChannel PSM: CBL2CAPPSM, error: Error?)
  @available(macOS 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didUnpublishL2CAPChannel PSM: CBL2CAPPSM, error: Error?)
  @available(macOS 10.13, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didOpen channel: CBL2CAPChannel?, error: Error?)
}
