
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLCollection : DOMObject {
  var length: UInt32 { get }
  func item(_ index: UInt32) -> DOMNode!
  func namedItem(_ name: String!) -> DOMNode!
  @available(macOS 10.6, *)
  func tags(_ name: String!) -> DOMNodeList!
}
