
@available(macOS 11.0, *)
class VZBridgedNetworkDeviceAttachment : VZNetworkDeviceAttachment {
  init(interface: VZBridgedNetworkInterface)
  var interface: VZBridgedNetworkInterface { get }
}
