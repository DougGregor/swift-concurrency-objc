
protocol IMServicePlugInPresenceSupport {
  @available(macOS, introduced: 10.7, deprecated: 10.13)
  func updateSessionProperties(_ properties: [AnyHashable : Any]!)
}
