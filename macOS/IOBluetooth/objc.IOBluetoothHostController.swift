
class IOBluetoothHostController : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  class func `default`() -> Self!
  var powerState: BluetoothHCIPowerState { get }
  func classOfDevice() -> BluetoothClassOfDevice
  func setClassOfDevice(_ classOfDevice: BluetoothClassOfDevice, forTimeInterval seconds: TimeInterval) -> IOReturn
  func addressAsString() -> String!
  func nameAsString() -> String!
}
extension NSObject {
  class func readRSSI(forDeviceComplete controller: Any!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>!, error: IOReturn)
  func readRSSI(forDeviceComplete controller: Any!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>!, error: IOReturn)
  class func readLinkQuality(forDeviceComplete controller: Any!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>!, error: IOReturn)
  func readLinkQuality(forDeviceComplete controller: Any!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>!, error: IOReturn)
}
extension NSNotification.Name {
  static let IOBluetoothHostControllerPoweredOn: NSNotification.Name
  static let IOBluetoothHostControllerPoweredOff: NSNotification.Name
}
