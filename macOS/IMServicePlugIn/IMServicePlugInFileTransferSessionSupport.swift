
protocol IMServicePlugInFileTransferSessionSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func start(_ session: IMServicePlugInOutgoingFileTransferSession!, toHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func accept(_ session: IMServicePlugInIncomingFileTransferSession!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func cancel(_ session: IMServicePlugInFileTransferSession!)
}
protocol IMServiceApplicationFileTransferSessionSupport : IMServiceApplication {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidReceive(_ session: IMServicePlugInIncomingFileTransferSession!, fromHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidAccept(_ session: IMServicePlugInOutgoingFileTransferSession!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidFinish(_ session: IMServicePlugInFileTransferSession!, error: Error!)
}
