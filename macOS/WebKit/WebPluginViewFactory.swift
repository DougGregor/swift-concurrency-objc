
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebPlugInBaseURLKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebPlugInAttributesKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebPlugInContainerKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebPlugInContainingElementKey: String
@available(macOS, introduced: 10.6, deprecated: 10.14)
let WebPlugInShouldLoadMainResourceKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebPlugInViewFactory : NSObjectProtocol {
  static func plugInView(withArguments arguments: [AnyHashable : Any]!) -> NSView!
}
