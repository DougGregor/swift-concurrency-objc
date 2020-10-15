
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMImplementation : DOMObject {
  @available(macOS 10.5, *)
  func hasFeature(_ feature: String!, version: String!) -> Bool
  @available(macOS 10.5, *)
  func createDocumentType(_ qualifiedName: String!, publicId: String!, systemId: String!) -> DOMDocumentType!
  @available(macOS 10.5, *)
  func createDocument(_ namespaceURI: String!, qualifiedName: String!, doctype: DOMDocumentType!) -> DOMDocument!
  @available(macOS 10.5, *)
  func createCSSStyleSheet(_ title: String!, media: String!) -> DOMCSSStyleSheet!
  @available(macOS 10.5, *)
  func createHTMLDocument(_ title: String!) -> DOMHTMLDocument!
}
extension DOMImplementation {
}
