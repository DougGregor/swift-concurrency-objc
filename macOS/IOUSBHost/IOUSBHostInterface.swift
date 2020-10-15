
class IOUSBHostInterface : IOUSBHostObject {
  class func __createMatchingDictionary(withVendorID vendorID: NSNumber?, productID: NSNumber?, bcdDevice: NSNumber?, interfaceNumber: NSNumber?, configurationValue: NSNumber?, interfaceClass: NSNumber?, interfaceSubclass: NSNumber?, interfaceProtocol: NSNumber?, speed: NSNumber?, productIDArray: [Any]?) -> Unmanaged<CFMutableDictionary>
  var idleTimeout: TimeInterval { get }
  func setIdleTimeout(_ idleTimeout: TimeInterval) throws
  var configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor> { get }
  var interfaceDescriptor: UnsafePointer<IOUSBInterfaceDescriptor> { get }
  func selectAlternateSetting(_ alternateSetting: Int) throws
  func copyPipe(withAddress address: Int) throws -> IOUSBHostPipe
}
