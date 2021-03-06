
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLSelectElement : DOMHTMLElement {
  @available(macOS 10.6, *)
  var autofocus: Bool
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var multiple: Bool
  var name: String!
  var size: Int32
  var type: String! { get }
  var options: DOMHTMLOptionsCollection! { get }
  var length: Int32 { get }
  var selectedIndex: Int32
  var value: String!
  @available(macOS 10.6, *)
  var willValidate: Bool { get }
  @available(macOS 10.6, *)
  func item(_ index: UInt32) -> DOMNode!
  @available(macOS 10.6, *)
  func namedItem(_ name: String!) -> DOMNode!
  @available(macOS 10.5, *)
  func add(_ element: DOMHTMLElement!, before: DOMHTMLElement!)
  func remove(_ index: Int32)
}
extension DOMHTMLSelectElement {
}
