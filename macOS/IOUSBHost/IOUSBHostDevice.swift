
class IOUSBHostDevice : IOUSBHostObject {
  class func __createMatchingDictionary(withVendorID vendorID: NSNumber?, productID: NSNumber?, bcdDevice: NSNumber?, deviceClass: NSNumber?, deviceSubclass: NSNumber?, deviceProtocol: NSNumber?, speed: NSNumber?, productIDArray: [Any]?) -> Unmanaged<CFMutableDictionary>
  func __configure(withValue value: Int, matchInterfaces: Bool) throws
  var deviceDescriptor: UnsafePointer<IOUSBDeviceDescriptor>? { get }
  var capabilityDescriptors: UnsafePointer<IOUSBBOSDescriptor>? { get }
  func configurationDescriptor(with index: Int) throws -> UnsafePointer<IOUSBConfigurationDescriptor>
  func configurationDescriptor(withConfigurationValue configurationValue: Int) throws -> UnsafePointer<IOUSBConfigurationDescriptor>
  var configurationDescriptor: UnsafePointer<IOUSBConfigurationDescriptor>? { get }
  func reset() throws
}
