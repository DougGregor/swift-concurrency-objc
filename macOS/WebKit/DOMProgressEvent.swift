
@available(macOS, introduced: 10.6, deprecated: 10.14)
class DOMProgressEvent : DOMEvent {
  var lengthComputable: Bool { get }
  var loaded: UInt64 { get }
  var total: UInt64 { get }
}
