
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSMediaRule : DOMCSSRule {
  var media: DOMMediaList! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(macOS 10.5, *)
  func insert(_ rule: String!, index: UInt32) -> UInt32
  func delete(_ index: UInt32)
}
extension DOMCSSMediaRule {
}
