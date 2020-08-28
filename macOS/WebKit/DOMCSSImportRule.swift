
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSImportRule : DOMCSSRule {
  var href: String! { get }
  var media: DOMMediaList! { get }
  var styleSheet: DOMCSSStyleSheet! { get }
}
