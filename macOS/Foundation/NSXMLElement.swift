
class XMLElement : XMLNode {
  convenience init(name: String)
  init(name: String, uri URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(xmlString string: String) throws
  func elements(forName name: String) -> [XMLElement]
  func elements(forLocalName localName: String, uri URI: String?) -> [XMLElement]
  func addAttribute(_ attribute: XMLNode)
  func removeAttribute(forName name: String)
  var attributes: [XMLNode]?
  func setAttributesWith(_ attributes: [String : String])
  func attribute(forName name: String) -> XMLNode?
  func attribute(forLocalName localName: String, uri URI: String?) -> XMLNode?
  func addNamespace(_ aNamespace: XMLNode)
  func removeNamespace(forPrefix name: String)
  var namespaces: [XMLNode]?
  func namespace(forPrefix name: String) -> XMLNode?
  func resolveNamespace(forName name: String) -> XMLNode?
  func resolvePrefix(forNamespaceURI namespaceURI: String) -> String?
  func insertChild(_ child: XMLNode, at index: Int)
  func insertChildren(_ children: [XMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(_ children: [XMLNode]?)
  func addChild(_ child: XMLNode)
  func replaceChild(at index: Int, with node: XMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(_ preserve: Bool)
}
extension XMLElement {
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func setAttributesAs(_ attributes: [AnyHashable : Any])
}
