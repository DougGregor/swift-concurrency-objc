
@available(macOS 11.0, *)
class VZBridgedNetworkInterface : NSObject {
  class var networkInterfaces: [VZBridgedNetworkInterface] { get }
  var identifier: String { get }
  var localizedDisplayName: String? { get }
}
