
class IOBluetoothSDPServiceRecord : NSObject, NSCoding, NSSecureCoding {
  class func publishedServiceRecord(with serviceDict: [AnyHashable : Any]!) -> Self!
  func remove() -> IOReturn
  class func withServiceDictionary(_ serviceDict: [AnyHashable : Any]!, device: IOBluetoothDevice!) -> Self!
  init!(serviceDictionary serviceDict: [AnyHashable : Any]!, device: IOBluetoothDevice!)
  class func withSDPServiceRecordRef(_ sdpServiceRecordRef: IOBluetoothSDPServiceRecordRef!) -> Self!
  func getRef() -> Unmanaged<IOBluetoothSDPServiceRecordRef>!
  var device: IOBluetoothDevice! { get }
  var attributes: [AnyHashable : Any]! { get }
  func getAttributeDataElement(_ attributeID: BluetoothSDPServiceAttributeID) -> IOBluetoothSDPDataElement!
  func getServiceName() -> String!
  func getRFCOMMChannelID(_ rfcommChannelID: UnsafeMutablePointer<BluetoothRFCOMMChannelID>!) -> IOReturn
  func getL2CAPPSM(_ outPSM: UnsafeMutablePointer<BluetoothL2CAPPSM>!) -> IOReturn
  func getHandle(_ outServiceRecordHandle: UnsafeMutablePointer<BluetoothSDPServiceRecordHandle>!) -> IOReturn
  func matchesUUID16(_ uuid16: BluetoothSDPUUID16) -> Bool
  func matchesUUIDArray(_ uuidArray: [Any]!) -> Bool
  func matchesSearch(_ searchArray: [Any]!) -> Bool
  func hasService(from array: [Any]!) -> Bool
  var sortedAttributes: [Any]! { get }
}
