
extension XMLDTDNode {
  enum DTDKind : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case general
    case parsed
    case unparsed
    case parameter
    case predefined
    case cdataAttribute
    case idAttribute
    case idRefAttribute
    case idRefsAttribute
    case entityAttribute
    case entitiesAttribute
    case nmTokenAttribute
    case nmTokensAttribute
    case enumerationAttribute
    case notationAttribute
    case undefinedDeclaration
    case emptyDeclaration
    case anyDeclaration
    case mixedDeclaration
    case elementDeclaration
  }
}
class XMLDTDNode : XMLNode {
  init?(xmlString string: String)
  var dtdKind: XMLDTDNode.DTDKind
  var isExternal: Bool { get }
  var publicID: String?
  var systemID: String?
  var notationName: String?
}
