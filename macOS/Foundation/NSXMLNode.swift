
extension XMLNode {
  enum Kind : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case invalid
    case document
    case element
    case attribute
    case namespace
    case processingInstruction
    case comment
    case text
    case DTDKind
    case entityDeclaration
    case attributeDeclaration
    case elementDeclaration
    case notationDeclaration
  }
}
class XMLNode : NSObject, NSCopying {
  convenience init(kind: XMLNode.Kind)
  init(kind: XMLNode.Kind, options: XMLNode.Options = [])
  class func document() -> Any
  class func document(withRootElement element: XMLElement) -> Any
  class func element(withName name: String) -> Any
  class func element(withName name: String, uri URI: String) -> Any
  class func element(withName name: String, stringValue string: String) -> Any
  class func element(withName name: String, children: [XMLNode]?, attributes: [XMLNode]?) -> Any
  class func attribute(withName name: String, stringValue: String) -> Any
  class func attribute(withName name: String, uri URI: String, stringValue: String) -> Any
  class func namespace(withName name: String, stringValue: String) -> Any
  class func processingInstruction(withName name: String, stringValue: String) -> Any
  class func comment(withStringValue stringValue: String) -> Any
  class func text(withStringValue stringValue: String) -> Any
  class func dtdNode(withXMLString string: String) -> Any?
  var kind: XMLNode.Kind { get }
  var name: String?
  var objectValue: Any?
  var stringValue: String?
  func setStringValue(_ string: String, resolvingEntities resolve: Bool)
  var index: Int { get }
  var level: Int { get }
  var rootDocument: XMLDocument? { get }
  @NSCopying var parent: XMLNode? { get }
  var childCount: Int { get }
  var children: [XMLNode]? { get }
  func child(at index: Int) -> XMLNode?
  @NSCopying var previousSibling: XMLNode? { get }
  @NSCopying var nextSibling: XMLNode? { get }
  @NSCopying var previous: XMLNode? { get }
  @NSCopying var next: XMLNode? { get }
  func detach()
  var xPath: String? { get }
  var localName: String? { get }
  var prefix: String? { get }
  var uri: String?
  class func localName(forName name: String) -> String
  class func prefix(forName name: String) -> String?
  class func predefinedNamespace(forPrefix name: String) -> XMLNode?
  var xmlString: String { get }
  func xmlString(options: XMLNode.Options = []) -> String
  func canonicalXMLStringPreservingComments(_ comments: Bool) -> String
  func nodes(forXPath xpath: String) throws -> [XMLNode]
  func objects(forXQuery xquery: String, constants: [String : Any]?) throws -> [Any]
  func objects(forXQuery xquery: String) throws -> [Any]
}
