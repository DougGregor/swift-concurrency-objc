
@available(macOS, introduced: 10.4, deprecated: 10.14)
let DOMEventException: String
@available(macOS, introduced: 10.4, deprecated: 10.14)
struct DOMEventExceptionCode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_UNSPECIFIED_EVENT_TYPE_ERR: DOMEventExceptionCode { get }
