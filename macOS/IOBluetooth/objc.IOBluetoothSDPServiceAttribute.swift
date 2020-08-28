
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding, NSSecureCoding {
  class func withID(_ newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!) -> Self!
  class func withID(_ newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!)
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!)
  func getID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
}
