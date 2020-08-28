
extension XMLDocument {
  enum ContentKind : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case xml
    case xhtml
    case html
    case text
  }
}
class XMLDocument : XMLNode {
  convenience init(xmlString string: String, options mask: XMLNode.Options = []) throws
  convenience init(contentsOf url: URL, options mask: XMLNode.Options = []) throws
  init(data: Data, options mask: XMLNode.Options = []) throws
  init(rootElement element: XMLElement?)
  class func replacementClass(for cls: AnyClass) -> AnyClass
  var characterEncoding: String?
  var version: String?
  var isStandalone: Bool
  var documentContentKind: XMLDocument.ContentKind
  var mimeType: String?
  @NSCopying var dtd: XMLDTD?
  func setRootElement(_ root: XMLElement)
  func rootElement() -> XMLElement?
  func insertChild(_ child: XMLNode, at index: Int)
  func insertChildren(_ children: [XMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(_ children: [XMLNode]?)
  func addChild(_ child: XMLNode)
  func replaceChild(at index: Int, with node: XMLNode)
  var xmlData: Data { get }
  func xmlData(options: XMLNode.Options = []) -> Data
  func object(byApplyingXSLT xslt: Data, arguments: [String : String]?) throws -> Any
  func object(byApplyingXSLTString xslt: String, arguments: [String : String]?) throws -> Any
  func objectByApplyingXSLT(at xsltURL: URL, arguments argument: [String : String]?) throws -> Any
  func validate() throws
}
