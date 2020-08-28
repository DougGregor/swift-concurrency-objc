
@available(tvOS 3.0, *)
class EASession : NSObject {
  @available(tvOS 10.0, *)
  init?(accessory: EAAccessory, forProtocol protocolString: String)
  @available(tvOS 10.0, *)
  var accessory: EAAccessory? { get }
  @available(tvOS 10.0, *)
  var protocolString: String? { get }
  @available(tvOS 10.0, *)
  var inputStream: InputStream? { get }
  @available(tvOS 10.0, *)
  var outputStream: OutputStream? { get }
}
