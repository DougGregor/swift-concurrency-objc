
@available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Use CBManagerAuthorization instead")
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use CBManagerState instead")
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
@available(watchOS 2.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}
@available(watchOS 2.0, *)
class CBPeripheralManager : CBManager {
  weak var delegate: @sil_weak CBPeripheralManagerDelegate?
  var isAdvertising: Bool { get }
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Use CBManagerAuthorization instead")
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  func startAdvertising(_ advertisementData: [String : Any]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(_ latency: CBPeripheralManagerConnectionLatency, for central: CBCentral)
  func add(_ service: CBMutableService)
  func remove(_ service: CBMutableService)
  func removeAllServices()
  func respond(to request: CBATTRequest, withResult result: CBATTError.Code)
  func updateValue(_ value: Data, for characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  @available(watchOS 4.0, *)
  func publishL2CAPChannel(withEncryption encryptionRequired: Bool)
  @available(watchOS 4.0, *)
  func unpublishL2CAPChannel(_ PSM: CBL2CAPPSM)
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String : Any])
  @available(watchOS 2.0, *)
  optional func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest])
  @available(watchOS 2.0, *)
  optional func peripheralManagerIsReady(toUpdateSubscribers peripheral: CBPeripheralManager)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didPublishL2CAPChannel PSM: CBL2CAPPSM, error: Error?)
  @available(watchOS 2.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didUnpublishL2CAPChannel PSM: CBL2CAPPSM, error: Error?)
  @available(watchOS 4.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didOpen channel: CBL2CAPChannel?, error: Error?)
}
