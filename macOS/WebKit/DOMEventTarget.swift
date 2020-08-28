
@available(macOS, introduced: 10.4, deprecated: 10.14)
protocol DOMEventTarget : NSCopying, NSObjectProtocol {
  @available(macOS 10.5, *)
  func addEventListener(_ type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(macOS 10.5, *)
  func removeEventListener(_ type: String!, listener: DOMEventListener!, useCapture: Bool)
  func dispatchEvent(_ event: DOMEvent!) -> Bool
}
