
@available(tvOS, introduced: 5.0, deprecated: 10.0, message: "Use CBManagerState instead")
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
  @available(tvOS 13.0, *)
  struct Feature : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var extendedScanAndConnect: CBCentralManager.Feature { get }
  }
}
@available(tvOS 5.0, *)
class CBCentralManager : CBManager {
  weak var delegate: @sil_weak CBCentralManagerDelegate?
  @available(tvOS 9.0, *)
  var isScanning: Bool { get }
  @available(tvOS 13.0, *)
  class func supports(_ features: CBCentralManager.Feature) -> Bool
  convenience init(delegate: CBCentralManagerDelegate?, queue: DispatchQueue?)
  @available(tvOS 7.0, *)
  init(delegate: CBCentralManagerDelegate?, queue: DispatchQueue?, options: [String : Any]? = nil)
  @available(tvOS 7.0, *)
  func retrievePeripherals(withIdentifiers identifiers: [UUID]) -> [CBPeripheral]
  @available(tvOS 7.0, *)
  func retrieveConnectedPeripherals(withServices serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripherals(withServices serviceUUIDs: [CBUUID]?, options: [String : Any]? = nil)
  func stopScan()
  func connect(_ peripheral: CBPeripheral, options: [String : Any]? = nil)
  func cancelPeripheralConnection(_ peripheral: CBPeripheral)
  @available(tvOS 13.0, *)
  func registerForConnectionEvents(options: [CBConnectionEventMatchingOption : Any]? = nil)
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  @asyncHandler func centralManagerDidUpdateState(_ central: CBCentralManager)
  @available(tvOS 5.0, *)
  optional func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : Any])
  @available(tvOS 5.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber)
  @available(tvOS 5.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral)
  @available(tvOS 5.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?)
  @available(tvOS 5.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?)
  @available(tvOS 13.0, *)
  optional func centralManager(_ central: CBCentralManager, connectionEventDidOccur event: CBConnectionEvent, for peripheral: CBPeripheral)
  @available(tvOS 13.0, *)
  @asyncHandler optional func centralManager(_ central: CBCentralManager, didUpdateANCSAuthorizationFor peripheral: CBPeripheral)
}
