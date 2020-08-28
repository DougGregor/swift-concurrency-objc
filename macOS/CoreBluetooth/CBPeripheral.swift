
@available(macOS 10.9, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disconnected
  case connecting
  case connected
  @available(macOS 10.13, *)
  case disconnecting
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case withResponse
  case withoutResponse
}
@available(macOS 10.7, *)
class CBPeripheral : CBPeer {
  weak var delegate: @sil_weak CBPeripheralDelegate?
  var name: String? { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var rssi: NSNumber? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  @available(macOS 10.13, *)
  var canSendWriteWithoutResponse: Bool { get }
  func readRSSI()
  func discoverServices(_ serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(_ includedServiceUUIDs: [CBUUID]?, for service: CBService)
  func discoverCharacteristics(_ characteristicUUIDs: [CBUUID]?, for service: CBService)
  func readValue(for characteristic: CBCharacteristic)
  @available(macOS 10.12, *)
  func maximumWriteValueLength(for type: CBCharacteristicWriteType) -> Int
  func writeValue(_ data: Data, for characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(_ enabled: Bool, for characteristic: CBCharacteristic)
  func discoverDescriptors(for characteristic: CBCharacteristic)
  func readValue(for descriptor: CBDescriptor)
  func writeValue(_ data: Data, for descriptor: CBDescriptor)
  @available(macOS 10.14, *)
  func openL2CAPChannel(_ PSM: CBL2CAPPSM)
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  optional func peripheralDidUpdateName(_ peripheral: CBPeripheral)
  @available(macOS 10.9, *)
  optional func peripheral(_ peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  optional func peripheralDidUpdateRSSI(_ peripheral: CBPeripheral, error: Error?)
  @available(macOS 10.13, *)
  optional func peripheral(_ peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?)
  @available(macOS 10.7, *)
  optional func peripheralIsReady(toSendWriteWithoutResponse peripheral: CBPeripheral)
  @available(macOS 10.13, *)
  optional func peripheral(_ peripheral: CBPeripheral, didOpen channel: CBL2CAPChannel?, error: Error?)
}
