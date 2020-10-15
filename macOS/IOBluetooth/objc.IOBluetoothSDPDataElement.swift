
class IOBluetoothSDPDataElement : NSObject, NSCoding, NSSecureCoding {
  class func withElementValue(_ element: NSObject!) -> Self!
  class func withType(_ type: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!) -> Self!
  class func withSDPDataElementRef(_ sdpDataElementRef: IOBluetoothSDPDataElementRef!) -> Self!
  init!(elementValue element: NSObject!)
  init!(type newType: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!)
  func getRef() -> Unmanaged<IOBluetoothSDPDataElementRef>!
  func getTypeDescriptor() -> BluetoothSDPDataElementTypeDescriptor
  func getSizeDescriptor() -> BluetoothSDPDataElementSizeDescriptor
  func getSize() -> UInt32
  func getNumberValue() -> NSNumber!
  func getDataValue() -> Data!
  func getStringValue() -> String!
  func getArrayValue() -> [Any]!
  func getUUIDValue() -> IOBluetoothSDPUUID!
  func getValue() -> NSObject!
  func contains(_ dataElement: IOBluetoothSDPDataElement!) -> Bool
  func containsValue(_ cmpValue: NSObject!) -> Bool
}
