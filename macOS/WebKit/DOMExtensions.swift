
extension DOMNode {
  @available(macOS 10.5, *)
  func boundingBox() -> NSRect
  @available(macOS 10.5, *)
  func lineBoxRects() -> [Any]!
}
extension DOMElement {
  @available(macOS 10.5, *)
  func image() -> NSImage!
}
extension DOMHTMLDocument {
  @available(macOS 10.5, *)
  func createDocumentFragment(withMarkupString markupString: String!, baseURL: URL!) -> DOMDocumentFragment!
  @available(macOS 10.5, *)
  func createDocumentFragment(withText text: String!) -> DOMDocumentFragment!
}
