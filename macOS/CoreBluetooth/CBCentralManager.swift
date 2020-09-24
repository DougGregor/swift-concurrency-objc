
@available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use CBManagerState instead")
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
}
@available(macOS 10.7, *)
class CBCentralManager : CBManager {
  weak var delegate: @sil_weak CBCentralManagerDelegate?
  @available(macOS 10.13, *)
  var isScanning: Bool { get }
  convenience init(delegate: CBCentralManagerDelegate?, queue: DispatchQueue?)
  @available(macOS 10.9, *)
  init(delegate: CBCentralManagerDelegate?, queue: DispatchQueue?, options: [String : Any]? = nil)
  @available(macOS 10.9, *)
  func retrievePeripherals(withIdentifiers identifiers: [UUID]) -> [CBPeripheral]
  @available(macOS 10.9, *)
  func retrieveConnectedPeripherals(withServices serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripherals(withServices serviceUUIDs: [CBUUID]?, options: [String : Any]? = nil)
  func stopScan()
  func connect(_ peripheral: CBPeripheral, options: [String : Any]? = nil)
  func cancelPeripheralConnection(_ peripheral: CBPeripheral)
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  @available(macOS 10.7, *)
  @asyncHandler func centralManagerDidUpdateState(_ central: CBCentralManager)
  @available(macOS 10.7, *)
  optional func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : Any])
  @available(macOS 10.7, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber)
  @available(macOS 10.7, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral)
  @available(macOS 10.7, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?)
  @available(macOS 10.7, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?)
}
