
@available(macOS 10.13, *)
class EASession : NSObject {
  @available(macOS 10.13, *)
  init?(accessory: EAAccessory, forProtocol protocolString: String)
  @available(macOS 10.13, *)
  var accessory: EAAccessory? { get }
  @available(macOS 10.13, *)
  var protocolString: String? { get }
  @available(macOS 10.13, *)
  var inputStream: InputStream? { get }
  @available(macOS 10.13, *)
  var outputStream: OutputStream? { get }
}
