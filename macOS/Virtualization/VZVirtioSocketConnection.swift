
@available(macOS 11.0, *)
class VZVirtioSocketConnection : NSObject {
  var destinationPort: UInt32 { get }
  var sourcePort: UInt32 { get }
  var fileDescriptor: Int32 { get }
  func close()
}
