
protocol IMServicePlugInInstantMessagingSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func userDidStartTyping(toHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func userDidStopTyping(toHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func send(_ message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func handleDidStartTyping(_ handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func handleDidStopTyping(_ handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidReceive(_ message: IMServicePlugInMessage!, fromHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func plugInDidSend(_ message: IMServicePlugInMessage!, toHandle handle: String!, error: Error!)
}
