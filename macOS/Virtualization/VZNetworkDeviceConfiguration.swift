
@available(macOS 11.0, *)
class VZNetworkDeviceConfiguration : NSObject, NSCopying {
  @NSCopying var macAddress: VZMACAddress
  var attachment: VZNetworkDeviceAttachment?
}
