
protocol IMServicePlugInInstantMessagingSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func userDidStartTyping(toHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func userDidStopTyping(toHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func send(_ message: IMServicePlugInMessage!, toHandle handle: String!)
}
protocol IMServiceApplicationInstantMessagingSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func handleDidStartTyping(_ handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func handleDidStopTyping(_ handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func plugInDidReceive(_ message: IMServicePlugInMessage!, fromHandle handle: String!)
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  @asyncHandler func plugInDidSend(_ message: IMServicePlugInMessage!, toHandle handle: String!, error: Error!)
}
