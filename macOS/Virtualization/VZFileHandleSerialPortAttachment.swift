
@available(macOS 11.0, *)
class VZFileHandleSerialPortAttachment : VZSerialPortAttachment {
  init(fileHandleForReading: FileHandle?, fileHandleForWriting: FileHandle?)
  var fileHandleForReading: FileHandle? { get }
  var fileHandleForWriting: FileHandle? { get }
}
