
class XMLDTD : XMLNode {
  convenience init(contentsOf url: URL, options mask: XMLNode.Options = []) throws
  init(data: Data, options mask: XMLNode.Options = []) throws
  var publicID: String?
  var systemID: String?
  func insertChild(_ child: XMLNode, at index: Int)
  func insertChildren(_ children: [XMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(_ children: [XMLNode]?)
  func addChild(_ child: XMLNode)
  func replaceChild(at index: Int, with node: XMLNode)
  func entityDeclaration(forName name: String) -> XMLDTDNode?
  func notationDeclaration(forName name: String) -> XMLDTDNode?
  func elementDeclaration(forName name: String) -> XMLDTDNode?
  func attributeDeclaration(forName name: String, elementName: String) -> XMLDTDNode?
  class func predefinedEntityDeclaration(forName name: String) -> XMLDTDNode?
}
