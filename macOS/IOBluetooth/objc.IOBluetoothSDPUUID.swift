
class IOBluetoothSDPUUID : NSData, NSCoding, NSSecureCoding {
  convenience init!(bytes: UnsafeRawPointer!, length: UInt32)
  convenience init!(data: Data!)
  class func uuid16(_ uuid16: BluetoothSDPUUID16) -> Self!
  class func uuid32(_ uuid32: BluetoothSDPUUID32) -> Self!
  init!(uuid16: BluetoothSDPUUID16)
  init!(uuid32: BluetoothSDPUUID32)
  func getWithLength(_ newLength: UInt32) -> Self!
  func isEqual(to otherUUID: IOBluetoothSDPUUID!) -> Bool
}
