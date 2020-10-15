
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSStyleRule : DOMCSSRule {
  var selectorText: String!
  var style: DOMCSSStyleDeclaration! { get }
}
