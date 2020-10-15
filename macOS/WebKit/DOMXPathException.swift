
@available(macOS, introduced: 10.4, deprecated: 10.14)
let DOMXPathException: String
@available(macOS, introduced: 10.4, deprecated: 10.14)
struct DOMXPathExceptionCode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_INVALID_EXPRESSION_ERR: DOMXPathExceptionCode { get }
var DOM_TYPE_ERR: DOMXPathExceptionCode { get }
