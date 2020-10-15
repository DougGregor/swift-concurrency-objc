
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLOptionsCollection : DOMObject {
  @available(macOS 10.5, *)
  var selectedIndex: Int32
  var length: UInt32
  func namedItem(_ name: String!) -> DOMNode!
  @available(macOS 10.5, *)
  func add(_ option: DOMHTMLOptionElement!, index: UInt32)
  @available(macOS 10.6, *)
  func remove(_ index: UInt32)
  func item(_ index: UInt32) -> DOMNode!
}
