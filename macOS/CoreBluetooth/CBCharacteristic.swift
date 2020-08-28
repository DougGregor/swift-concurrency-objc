
struct CBCharacteristicProperties : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var broadcast: CBCharacteristicProperties { get }
  static var read: CBCharacteristicProperties { get }
  static var writeWithoutResponse: CBCharacteristicProperties { get }
  static var write: CBCharacteristicProperties { get }
  static var notify: CBCharacteristicProperties { get }
  static var indicate: CBCharacteristicProperties { get }
  static var authenticatedSignedWrites: CBCharacteristicProperties { get }
  static var extendedProperties: CBCharacteristicProperties { get }
  @available(macOS 10.9, *)
  static var notifyEncryptionRequired: CBCharacteristicProperties { get }
  @available(macOS 10.9, *)
  static var indicateEncryptionRequired: CBCharacteristicProperties { get }
}
@available(macOS 10.7, *)
class CBCharacteristic : CBAttribute {
  unowned(unsafe) var service: @sil_unmanaged CBService { get }
  var properties: CBCharacteristicProperties { get }
  var value: Data? { get }
  var descriptors: [CBDescriptor]? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.13)
  var isBroadcasted: Bool { get }
  var isNotifying: Bool { get }
}
@available(macOS 10.9, *)
struct CBAttributePermissions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var readable: CBAttributePermissions { get }
  static var writeable: CBAttributePermissions { get }
  static var readEncryptionRequired: CBAttributePermissions { get }
  static var writeEncryptionRequired: CBAttributePermissions { get }
}
@available(macOS 10.9, *)
class CBMutableCharacteristic : CBCharacteristic {
  var permissions: CBAttributePermissions
  @available(macOS 10.9, *)
  var subscribedCentrals: [CBCentral]? { get }
  init(type UUID: CBUUID, properties: CBCharacteristicProperties, value: Data?, permissions: CBAttributePermissions)
}
