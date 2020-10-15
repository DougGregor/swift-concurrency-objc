
@available(macOS 10.7, *)
class CBService : CBAttribute {
  unowned(unsafe) var peripheral: @sil_unmanaged CBPeripheral { get }
  var isPrimary: Bool { get }
  var includedServices: [CBService]? { get }
  var characteristics: [CBCharacteristic]? { get }
}
@available(macOS 10.9, *)
class CBMutableService : CBService {
  init(type UUID: CBUUID, primary isPrimary: Bool)
}
