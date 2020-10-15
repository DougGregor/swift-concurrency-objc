
var DOM_HORIZONTAL: Int { get }
var DOM_VERTICAL: Int { get }
var DOM_BOTH: Int { get }
@available(macOS, introduced: 10.5, deprecated: 10.14)
class DOMOverflowEvent : DOMEvent {
  var orient: UInt16 { get }
  var horizontalOverflow: Bool { get }
  var verticalOverflow: Bool { get }
  func initOverflowEvent(_ orient: UInt16, horizontalOverflow: Bool, verticalOverflow: Bool)
}
