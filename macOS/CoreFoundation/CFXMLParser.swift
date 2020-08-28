
var __COREFOUNDATION_CFXMLPARSER__: Int32 { get }
class CFXMLParser : _CFObject {
}
struct CFXMLParserOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var validateDocument: CFXMLParserOptions { get }
  static var skipMetaData: CFXMLParserOptions { get }
  static var replacePhysicalEntities: CFXMLParserOptions { get }
  static var skipWhitespace: CFXMLParserOptions { get }
  static var resolveExternalEntities: CFXMLParserOptions { get }
  static var addImpliedAttributes: CFXMLParserOptions { get }
  static var allOptions: CFXMLParserOptions { get }
}
struct CFXMLParserStatusCode : OptionSet {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var statusParseNotBegun: CFXMLParserStatusCode { get }
  static var statusParseInProgress: CFXMLParserStatusCode { get }
  static var errorUnexpectedEOF: CFXMLParserStatusCode { get }
  static var errorUnknownEncoding: CFXMLParserStatusCode { get }
  static var errorEncodingConversionFailure: CFXMLParserStatusCode { get }
  static var errorMalformedProcessingInstruction: CFXMLParserStatusCode { get }
  static var errorMalformedDTD: CFXMLParserStatusCode { get }
  static var errorMalformedName: CFXMLParserStatusCode { get }
  static var errorMalformedCDSect: CFXMLParserStatusCode { get }
  static var errorMalformedCloseTag: CFXMLParserStatusCode { get }
  static var errorMalformedStartTag: CFXMLParserStatusCode { get }
  static var errorMalformedDocument: CFXMLParserStatusCode { get }
  static var errorElementlessDocument: CFXMLParserStatusCode { get }
  static var errorMalformedComment: CFXMLParserStatusCode { get }
  static var errorMalformedCharacterReference: CFXMLParserStatusCode { get }
  static var errorMalformedParsedCharacterData: CFXMLParserStatusCode { get }
  static var errorNoData: CFXMLParserStatusCode { get }
}
typealias CFXMLParserCreateXMLStructureCallBack = @convention(c) (CFXMLParser?, CFXMLNode?, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?
typealias CFXMLParserAddChildCallBack = @convention(c) (CFXMLParser?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
typealias CFXMLParserEndXMLStructureCallBack = @convention(c) (CFXMLParser?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
typealias CFXMLParserResolveExternalEntityCallBack = @convention(c) (CFXMLParser?, UnsafeMutablePointer<CFXMLExternalID>?, UnsafeMutableRawPointer?) -> Unmanaged<CFData>?
typealias CFXMLParserHandleErrorCallBack = @convention(c) (CFXMLParser?, CFXMLParserStatusCode, UnsafeMutableRawPointer?) -> DarwinBoolean
struct CFXMLParserCallBacks {
  var version: CFIndex
  var createXMLStructure: CFXMLParserCreateXMLStructureCallBack!
  var addChild: CFXMLParserAddChildCallBack!
  var endXMLStructure: CFXMLParserEndXMLStructureCallBack!
  var resolveExternalEntity: CFXMLParserResolveExternalEntityCallBack!
  var handleError: CFXMLParserHandleErrorCallBack!
  init()
  init(version: CFIndex, createXMLStructure: CFXMLParserCreateXMLStructureCallBack!, addChild: CFXMLParserAddChildCallBack!, endXMLStructure: CFXMLParserEndXMLStructureCallBack!, resolveExternalEntity: CFXMLParserResolveExternalEntityCallBack!, handleError: CFXMLParserHandleErrorCallBack!)
}
typealias CFXMLParserRetainCallBack = @convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?
typealias CFXMLParserReleaseCallBack = @convention(c) (UnsafeRawPointer?) -> Void
typealias CFXMLParserCopyDescriptionCallBack = @convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?
struct CFXMLParserContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: CFXMLParserRetainCallBack!
  var release: CFXMLParserReleaseCallBack!
  var copyDescription: CFXMLParserCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: CFXMLParserRetainCallBack!, release: CFXMLParserReleaseCallBack!, copyDescription: CFXMLParserCopyDescriptionCallBack!)
}
func CFXMLCreateStringByEscapingEntities(_ allocator: CFAllocator!, _ string: CFString!, _ entitiesDictionary: CFDictionary!) -> CFString!
func CFXMLCreateStringByUnescapingEntities(_ allocator: CFAllocator!, _ string: CFString!, _ entitiesDictionary: CFDictionary!) -> CFString!
let kCFXMLTreeErrorDescription: CFString!
let kCFXMLTreeErrorLineNumber: CFString!
let kCFXMLTreeErrorLocation: CFString!
let kCFXMLTreeErrorStatusCode: CFString!
