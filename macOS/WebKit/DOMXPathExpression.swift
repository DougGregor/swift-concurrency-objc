
@available(macOS, introduced: 10.5, deprecated: 10.14)
class DOMXPathExpression : DOMObject {
  @available(macOS 10.5, *)
  func evaluate(_ contextNode: DOMNode!, type: UInt16, in inResult: DOMXPathResult!) -> DOMXPathResult!
}
extension DOMXPathExpression {
}
