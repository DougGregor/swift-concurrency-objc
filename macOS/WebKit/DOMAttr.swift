
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMAttr : DOMNode {
  var name: String! { get }
  var specified: Bool { get }
  var value: String!
  var ownerElement: DOMElement! { get }
  @available(macOS 10.5, *)
  var style: DOMCSSStyleDeclaration! { get }
}
