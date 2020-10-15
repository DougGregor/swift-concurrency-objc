
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInFileTransferSession : NSObject {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var guid: String! { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var containerName: String! { get }
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInOutgoingFileTransferSession : IMServicePlugInFileTransferSession {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  var outgoingFileTransfers: [Any]! { get }
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func outgoingFileTransfer(forPath path: String!) -> IMServicePlugInOutgoingFileTransfer!
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
class IMServicePlugInIncomingFileTransferSession : IMServicePlugInFileTransferSession {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func setContainerName(_ containerName: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func addIncomingFileTransfer(_ fileTransfer: IMServicePlugInIncomingFileTransfer!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func incomingFileTransfers() -> [Any]!
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func incomingFileTransfer(forPath path: String!) -> IMServicePlugInIncomingFileTransfer!
}
