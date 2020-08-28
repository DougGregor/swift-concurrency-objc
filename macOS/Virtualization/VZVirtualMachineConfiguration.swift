
@available(macOS 11.0, *)
class VZVirtualMachineConfiguration : NSObject, NSCopying {
  var bootLoader: VZBootLoader?
  var memorySize: UInt64
  var cpuCount: Int
  var entropyDevices: [VZEntropyDeviceConfiguration]
  var memoryBalloonDevices: [VZMemoryBalloonDeviceConfiguration]
  var networkDevices: [VZNetworkDeviceConfiguration]
  var serialPorts: [VZSerialPortConfiguration]
  var socketDevices: [VZSocketDeviceConfiguration]
  var storageDevices: [VZStorageDeviceConfiguration]
}
extension VZVirtualMachineConfiguration {
  func validate() throws
  class var minimumAllowedMemorySize: UInt64 { get }
  class var maximumAllowedMemorySize: UInt64 { get }
  class var minimumAllowedCPUCount: Int { get }
  class var maximumAllowedCPUCount: Int { get }
}
