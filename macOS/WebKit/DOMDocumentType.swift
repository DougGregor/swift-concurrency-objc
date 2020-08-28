
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMDocumentType : DOMNode {
  var name: String! { get }
  var entities: DOMNamedNodeMap! { get }
  var notations: DOMNamedNodeMap! { get }
  var publicId: String! { get }
  var systemId: String! { get }
  var internalSubset: String! { get }
}
