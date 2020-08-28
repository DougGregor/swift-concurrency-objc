
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in modern versions of Java. It may be removed in a future version of macOS.")
protocol JRSRemoteLayer {
  var layerID: UInt32 { get }
}
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in modern versions of Java. It may be removed in a future version of macOS.")
extension CALayer {
  func createRemoteLayerBound(to serverPort: mach_port_t) -> (JRSRemoteLayer & NSObjectProtocol)!
  func hostRemoteLayer(_ layerID: UInt32)
}
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in modern versions of Java. It may be removed in a future version of macOS.")
class JRSRenderServer : NSObject {
  class func start() -> mach_port_t
  class func send(_ serverPort: mach_port_t) -> String!
  class func recieveRenderServer(_ serverName: String!) -> mach_port_t
}
