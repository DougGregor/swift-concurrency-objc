
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSPageRule : DOMCSSRule {
  var selectorText: String!
  var style: DOMCSSStyleDeclaration! { get }
}
