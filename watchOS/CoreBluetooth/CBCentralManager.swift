
@available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use CBManagerState instead")
enum CBCentralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
enum CBConnectionEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case peerDisconnected
  case peerConnected
}
extension CBCentralManager {
  @available(watchOS 6.0, *)
  struct Feature : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var extendedScanAndConnect: CBCentralManager.Feature { get }
  }
}
@available(watchOS 2.0, *)
class CBCentralManager : CBManager {
  weak var delegate: @sil_weak CBCentralManagerDelegate?
  @available(watchOS 2.0, *)
  var isScanning: Bool { get }
  @available(watchOS 6.0, *)
  class func supports(_ features: CBCentralManager.Feature) -> Bool
  convenience init(delegate: CBCentralManagerDelegate?, queue: DispatchQueue?)
  @available(watchOS 2.0, *)
  init(delegate: CBCentralManagerDelegate?, queue: DispatchQueue?, options: [String : Any]? = nil)
  @available(watchOS 2.0, *)
  func retrievePeripherals(withIdentifiers identifiers: [UUID]) -> [CBPeripheral]
  @available(watchOS 2.0, *)
  func retrieveConnectedPeripherals(withServices serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripherals(withServices serviceUUIDs: [CBUUID]?, options: [String : Any]? = nil)
  func stopScan()
  func connect(_ peripheral: CBPeripheral, options: [String : Any]? = nil)
  func cancelPeripheralConnection(_ peripheral: CBPeripheral)
  @available(watchOS 6.0, *)
  func registerForConnectionEvents(options: [CBConnectionEventMatchingOption : Any]? = nil)
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  @asyncHandler func centralManagerDidUpdateState(_ central: CBCentralManager)
  @available(watchOS 2.0, *)
  optional func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : Any])
  @available(watchOS 2.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber)
  @available(watchOS 2.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral)
  @available(watchOS 2.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?)
  @available(watchOS 2.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?)
  @available(watchOS 6.0, *)
  optional func centralManager(_ central: CBCentralManager, connectionEventDidOccur event: CBConnectionEvent, for peripheral: CBPeripheral)
  @available(watchOS 6.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didUpdateANCSAuthorizationFor peripheral: CBPeripheral)
}
