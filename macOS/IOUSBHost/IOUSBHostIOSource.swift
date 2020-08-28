
class IOUSBHostIOSource : NSObject {
  var hostInterface: IOUSBHostInterface { get }
  var deviceAddress: Int { get }
  var endpointAddress: Int { get }
}
struct IOUSBHostIOSourceDescriptors {
  var bcdUSB: UInt16
  var descriptor: IOUSBEndpointDescriptor
  var ssCompanionDescriptor: IOUSBSuperSpeedEndpointCompanionDescriptor
  var sspCompanionDescriptor: IOUSBSuperSpeedPlusIsochronousEndpointCompanionDescriptor
  init()
  init(bcdUSB: UInt16, descriptor: IOUSBEndpointDescriptor, ssCompanionDescriptor: IOUSBSuperSpeedEndpointCompanionDescriptor, sspCompanionDescriptor: IOUSBSuperSpeedPlusIsochronousEndpointCompanionDescriptor)
}
