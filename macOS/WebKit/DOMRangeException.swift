
@available(macOS, introduced: 10.4, deprecated: 10.14)
let DOMRangeException: String
@available(macOS, introduced: 10.4, deprecated: 10.14)
struct DOMRangeExceptionCode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_BAD_BOUNDARYPOINTS_ERR: DOMRangeExceptionCode { get }
var DOM_INVALID_NODE_TYPE_ERR: DOMRangeExceptionCode { get }
