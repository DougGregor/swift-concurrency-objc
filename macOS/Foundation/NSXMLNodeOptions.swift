
extension XMLNode {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var nodeIsCDATA: XMLNode.Options { get }
    static var nodeExpandEmptyElement: XMLNode.Options { get }
    static var nodeCompactEmptyElement: XMLNode.Options { get }
    static var nodeUseSingleQuotes: XMLNode.Options { get }
    static var nodeUseDoubleQuotes: XMLNode.Options { get }
    static var nodeNeverEscapeContents: XMLNode.Options { get }
    static var documentTidyHTML: XMLNode.Options { get }
    static var documentTidyXML: XMLNode.Options { get }
    static var documentValidate: XMLNode.Options { get }
    static var nodeLoadExternalEntitiesAlways: XMLNode.Options { get }
    static var nodeLoadExternalEntitiesSameOriginOnly: XMLNode.Options { get }
    static var nodeLoadExternalEntitiesNever: XMLNode.Options { get }
    static var documentXInclude: XMLNode.Options { get }
    static var nodePrettyPrint: XMLNode.Options { get }
    static var documentIncludeContentTypeDeclaration: XMLNode.Options { get }
    static var nodePreserveNamespaceOrder: XMLNode.Options { get }
    static var nodePreserveAttributeOrder: XMLNode.Options { get }
    static var nodePreserveEntities: XMLNode.Options { get }
    static var nodePreservePrefixes: XMLNode.Options { get }
    static var nodePreserveCDATA: XMLNode.Options { get }
    static var nodePreserveWhitespace: XMLNode.Options { get }
    static var nodePreserveDTD: XMLNode.Options { get }
    static var nodePreserveCharacterReferences: XMLNode.Options { get }
    static var nodePromoteSignificantWhitespace: XMLNode.Options { get }
    static var nodePreserveEmptyElements: XMLNode.Options { get }
    static var nodePreserveQuotes: XMLNode.Options { get }
    static var nodePreserveAll: XMLNode.Options { get }
  }
}
