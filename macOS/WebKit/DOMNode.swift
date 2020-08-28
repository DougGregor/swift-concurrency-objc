
var DOM_ELEMENT_NODE: Int { get }
var DOM_ATTRIBUTE_NODE: Int { get }
var DOM_TEXT_NODE: Int { get }
var DOM_CDATA_SECTION_NODE: Int { get }
var DOM_ENTITY_REFERENCE_NODE: Int { get }
var DOM_ENTITY_NODE: Int { get }
var DOM_PROCESSING_INSTRUCTION_NODE: Int { get }
var DOM_COMMENT_NODE: Int { get }
var DOM_DOCUMENT_NODE: Int { get }
var DOM_DOCUMENT_TYPE_NODE: Int { get }
var DOM_DOCUMENT_FRAGMENT_NODE: Int { get }
var DOM_NOTATION_NODE: Int { get }
var DOM_DOCUMENT_POSITION_DISCONNECTED: Int { get }
var DOM_DOCUMENT_POSITION_PRECEDING: Int { get }
var DOM_DOCUMENT_POSITION_FOLLOWING: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINS: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINED_BY: Int { get }
var DOM_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: Int { get }
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMNode : DOMObject, DOMEventTarget {
  var nodeName: String! { get }
  var nodeValue: String!
  var nodeType: UInt16 { get }
  var parent: DOMNode! { get }
  var childNodes: DOMNodeList! { get }
  var firstChild: DOMNode! { get }
  var lastChild: DOMNode! { get }
  var previousSibling: DOMNode! { get }
  var nextSibling: DOMNode! { get }
  var ownerDocument: DOMDocument! { get }
  var namespaceURI: String! { get }
  var prefix: String!
  var localName: String! { get }
  var attributes: DOMNamedNodeMap! { get }
  @available(macOS 10.5, *)
  var baseURI: String! { get }
  @available(macOS 10.5, *)
  var textContent: String!
  @available(macOS 10.5, *)
  var parentElement: DOMElement! { get }
  @available(macOS 10.5, *)
  var isContentEditable: Bool { get }
  @available(macOS 10.5, *)
  func insert(before newChild: DOMNode!, refChild: DOMNode!) -> DOMNode!
  @available(macOS 10.5, *)
  func replaceChild(_ newChild: DOMNode!, oldChild: DOMNode!) -> DOMNode!
  func removeChild(_ oldChild: DOMNode!) -> DOMNode!
  func appendChild(_ newChild: DOMNode!) -> DOMNode!
  func hasChildNodes() -> Bool
  func cloneNode(_ deep: Bool) -> DOMNode!
  func normalize()
  @available(macOS 10.5, *)
  func isSupported(_ feature: String!, version: String!) -> Bool
  func hasAttributes() -> Bool
  @available(macOS 10.5, *)
  func isSameNode(_ other: DOMNode!) -> Bool
  @available(macOS 10.5, *)
  func isEqualNode(_ other: DOMNode!) -> Bool
  @available(macOS 10.5, *)
  func lookupPrefix(_ namespaceURI: String!) -> String!
  @available(macOS 10.5, *)
  func lookupNamespaceURI(_ prefix: String!) -> String!
  @available(macOS 10.5, *)
  func isDefaultNamespace(_ namespaceURI: String!) -> Bool
  @available(macOS 10.6, *)
  func compareDocumentPosition(_ other: DOMNode!) -> UInt16
  @available(macOS 10.5, *)
  func contains(_ other: DOMNode!) -> Bool
}
extension DOMNode {
}
