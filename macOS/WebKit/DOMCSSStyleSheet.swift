
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSStyleSheet : DOMStyleSheet {
  var ownerRule: DOMCSSRule! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(macOS 10.6, *)
  var rules: DOMCSSRuleList! { get }
  @available(macOS 10.5, *)
  func insertRule(_ rule: String!, index: UInt32) -> UInt32
  func deleteRule(_ index: UInt32)
  @available(macOS 10.6, *)
  func addRule(_ selector: String!, style: String!, index: UInt32) -> Int32
  @available(macOS 10.6, *)
  func removeRule(_ index: UInt32)
}
extension DOMCSSStyleSheet {
}
