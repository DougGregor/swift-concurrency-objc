
@available(macOS, introduced: 10.4, deprecated: 10.14)
protocol DOMEventListener : NSObjectProtocol {
  func handle(_ event: DOMEvent!)
}
