
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSValueList : DOMCSSValue {
  var length: UInt32 { get }
  func item(_ index: UInt32) -> DOMCSSValue!
}
