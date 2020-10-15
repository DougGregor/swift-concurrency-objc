
@available(macOS 11.0, *)
class VZFileSerialPortAttachment : VZSerialPortAttachment {
  init(url: URL, append shouldAppend: Bool) throws
  var url: URL { get }
  var append: Bool { get }
}
