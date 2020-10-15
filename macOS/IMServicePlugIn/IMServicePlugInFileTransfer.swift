
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInFileTransfer : NSObject {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  class func fileTransfer(withPath path: String!, type: String!, totalBytes: UInt64) -> Any!
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  init!(path: String!, type: String!, totalBytes: UInt64)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var guid: String! { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var path: String! { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var type: String! { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var transferredBytes: UInt64 { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var totalBytes: UInt64 { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var session: IMServicePlugInFileTransferSession! { get }
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInOutgoingFileTransfer : IMServicePlugInFileTransfer {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func resetInputStream()
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var inputStream: InputStream! { get }
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInIncomingFileTransfer : IMServicePlugInFileTransfer {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func resetOutputStream()
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var outputStream: OutputStream! { get }
}
