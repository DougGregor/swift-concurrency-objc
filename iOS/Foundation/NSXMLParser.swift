
class XMLParser : NSObject {
  convenience init?(contentsOf url: URL)
  init(data: Data)
  @available(iOS 5.0, *)
  convenience init(stream: InputStream)
  unowned(unsafe) var delegate: @sil_unmanaged XMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  @available(iOS 8.0, *)
  var externalEntityResolvingPolicy: XMLParser.ExternalEntityResolvingPolicy
  @available(iOS 8.0, *)
  var allowedExternalEntityURLs: Set<URL>?
  func parse() -> Bool
  func abortParsing()
  var parserError: Error? { get }
  var shouldResolveExternalEntities: Bool
}
extension XMLParser {
  var publicID: String? { get }
  var systemID: String? { get }
  var lineNumber: Int { get }
  var columnNumber: Int { get }
}
protocol XMLParserDelegate : NSObjectProtocol {
  @asyncHandler optional func parserDidStartDocument(_ parser: XMLParser)
  @asyncHandler optional func parserDidEndDocument(_ parser: XMLParser)
  optional func parser(_ parser: XMLParser, foundNotationDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(_ parser: XMLParser, foundUnparsedEntityDeclarationWithName name: String, publicID: String?, systemID: String?, notationName: String?)
  optional func parser(_ parser: XMLParser, foundAttributeDeclarationWithName attributeName: String, forElement elementName: String, type: String?, defaultValue: String?)
  optional func parser(_ parser: XMLParser, foundElementDeclarationWithName elementName: String, model: String)
  optional func parser(_ parser: XMLParser, foundInternalEntityDeclarationWithName name: String, value: String?)
  optional func parser(_ parser: XMLParser, foundExternalEntityDeclarationWithName name: String, publicID: String?, systemID: String?)
  @asyncHandler optional func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
  @asyncHandler optional func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
  @asyncHandler optional func parser(_ parser: XMLParser, didStartMappingPrefix prefix: String, toURI namespaceURI: String)
  @asyncHandler optional func parser(_ parser: XMLParser, didEndMappingPrefix prefix: String)
  optional func parser(_ parser: XMLParser, foundCharacters string: String)
  optional func parser(_ parser: XMLParser, foundIgnorableWhitespace whitespaceString: String)
  optional func parser(_ parser: XMLParser, foundProcessingInstructionWithTarget target: String, data: String?)
  optional func parser(_ parser: XMLParser, foundComment comment: String)
  optional func parser(_ parser: XMLParser, foundCDATA CDATABlock: Data)
  optional func parser(_ parser: XMLParser, resolveExternalEntityName name: String, systemID: String?) -> Data?
  optional func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error)
  optional func parser(_ parser: XMLParser, validationErrorOccurred validationError: Error)
}
extension XMLParser {
  @available(iOS 2.0, *)
  class let errorDomain: String
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case internalError
    case outOfMemoryError
    case documentStartError
    case emptyDocumentError
    case prematureDocumentEndError
    case invalidHexCharacterRefError
    case invalidDecimalCharacterRefError
    case invalidCharacterRefError
    case invalidCharacterError
    case characterRefAtEOFError
    case characterRefInPrologError
    case characterRefInEpilogError
    case characterRefInDTDError
    case entityRefAtEOFError
    case entityRefInPrologError
    case entityRefInEpilogError
    case entityRefInDTDError
    case parsedEntityRefAtEOFError
    case parsedEntityRefInPrologError
    case parsedEntityRefInEpilogError
    case parsedEntityRefInInternalSubsetError
    case entityReferenceWithoutNameError
    case entityReferenceMissingSemiError
    case parsedEntityRefNoNameError
    case parsedEntityRefMissingSemiError
    case undeclaredEntityError
    case unparsedEntityError
    case entityIsExternalError
    case entityIsParameterError
    case unknownEncodingError
    case encodingNotSupportedError
    case stringNotStartedError
    case stringNotClosedError
    case namespaceDeclarationError
    case entityNotStartedError
    case entityNotFinishedError
    case lessThanSymbolInAttributeError
    case attributeNotStartedError
    case attributeNotFinishedError
    case attributeHasNoValueError
    case attributeRedefinedError
    case literalNotStartedError
    case literalNotFinishedError
    case commentNotFinishedError
    case processingInstructionNotStartedError
    case processingInstructionNotFinishedError
    case notationNotStartedError
    case notationNotFinishedError
    case attributeListNotStartedError
    case attributeListNotFinishedError
    case mixedContentDeclNotStartedError
    case mixedContentDeclNotFinishedError
    case elementContentDeclNotStartedError
    case elementContentDeclNotFinishedError
    case xmlDeclNotStartedError
    case xmlDeclNotFinishedError
    case conditionalSectionNotStartedError
    case conditionalSectionNotFinishedError
    case externalSubsetNotFinishedError
    case doctypeDeclNotFinishedError
    case misplacedCDATAEndStringError
    case cdataNotFinishedError
    case misplacedXMLDeclarationError
    case spaceRequiredError
    case separatorRequiredError
    case nmtokenRequiredError
    case nameRequiredError
    case pcdataRequiredError
    case uriRequiredError
    case publicIdentifierRequiredError
    case ltRequiredError
    case gtRequiredError
    case ltSlashRequiredError
    case equalExpectedError
    case tagNameMismatchError
    case unfinishedTagError
    case standaloneValueError
    case invalidEncodingNameError
    case commentContainsDoubleHyphenError
    case invalidEncodingError
    case externalStandaloneEntityError
    case invalidConditionalSectionError
    case entityValueRequiredError
    case notWellBalancedError
    case extraContentError
    case invalidCharacterInEntityError
    case parsedEntityRefInInternalError
    case entityRefLoopError
    case entityBoundaryError
    case invalidURIError
    case uriFragmentError
    case noDTDError
    case delegateAbortedParseError
  }
  @available(iOS 8.0, *)
  enum ExternalEntityResolvingPolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case never
    case noNetwork
    case sameOriginOnly
    case always
  }
}
