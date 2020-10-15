
extension NSAttributedString.Key {
  @available(macOS 10.0, *)
  static let font: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let paragraphStyle: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let foregroundColor: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let backgroundColor: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let ligature: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let kern: NSAttributedString.Key
  @available(macOS 11.0, *)
  static let tracking: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let strikethroughStyle: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let underlineStyle: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let strokeColor: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let strokeWidth: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let shadow: NSAttributedString.Key
  @available(macOS 10.10, *)
  static let textEffect: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let attachment: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let link: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let baselineOffset: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let underlineColor: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let strikethroughColor: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let obliqueness: NSAttributedString.Key
  @available(macOS 10.0, *)
  static let expansion: NSAttributedString.Key
  @available(macOS 10.6, *)
  static let writingDirection: NSAttributedString.Key
  @available(macOS 10.7, *)
  static let verticalGlyphForm: NSAttributedString.Key
  static let cursor: NSAttributedString.Key
  static let toolTip: NSAttributedString.Key
  static let markedClauseSegment: NSAttributedString.Key
  @available(macOS 10.8, *)
  static let textAlternatives: NSAttributedString.Key
  static let spellingState: NSAttributedString.Key
  static let superscript: NSAttributedString.Key
  static let glyphInfo: NSAttributedString.Key
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "This attribute is bound to a specific implementation of ATS feature and not generically supported by wide range of fonts. The majority of characters accessed through this API are now encoded in the Unicode standard. Use the CTFont feature API for fine control over character shape choices.")
  static let characterShapeAttributeName: NSAttributedString.Key
  @available(macOS, introduced: 10.8, deprecated: 10.11)
  static let usesScreenFontsDocumentAttribute: NSAttributedString.Key
}
@available(macOS 10.0, *)
struct NSUnderlineStyle : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var single: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var thick: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var double: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var patternDot: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var patternDash: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var patternDashDot: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var patternDashDotDot: NSUnderlineStyle { get }
  @available(macOS 10.0, *)
  static var byWord: NSUnderlineStyle { get }
}
@available(macOS 10.11, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case embedding
  case override
}
extension NSAttributedString {
  struct TextEffectStyle : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum SpellingState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.5, *)
    case spelling
    @available(macOS 10.5, *)
    case grammar
  }
  struct DocumentType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct TextLayoutSectionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct DocumentAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct DocumentReadingOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSAttributedString.TextEffectStyle {
  @available(macOS 10.10, *)
  static let letterpressStyle: NSAttributedString.TextEffectStyle
}
extension NSMutableAttributedString {
  @available(macOS 10.0, *)
  func fixAttributes(in range: NSRange)
  func fixFontAttribute(in range: NSRange)
  func fixParagraphStyleAttribute(in range: NSRange)
  func fixAttachmentAttribute(in range: NSRange)
}
extension NSAttributedString.DocumentType {
  @available(macOS 10.0, *)
  static let plain: NSAttributedString.DocumentType
  @available(macOS 10.0, *)
  static let rtf: NSAttributedString.DocumentType
  @available(macOS 10.0, *)
  static let rtfd: NSAttributedString.DocumentType
  @available(macOS 10.0, *)
  static let html: NSAttributedString.DocumentType
  static let macSimpleText: NSAttributedString.DocumentType
  static let docFormat: NSAttributedString.DocumentType
  static let wordML: NSAttributedString.DocumentType
  static let webArchive: NSAttributedString.DocumentType
  @available(macOS 10.5, *)
  static let officeOpenXML: NSAttributedString.DocumentType
  @available(macOS 10.5, *)
  static let openDocument: NSAttributedString.DocumentType
}
extension NSAttributedString.TextLayoutSectionKey {
  @available(macOS 10.7, *)
  static let orientation: NSAttributedString.TextLayoutSectionKey
  @available(macOS 10.7, *)
  static let range: NSAttributedString.TextLayoutSectionKey
}
@available(macOS 10.15, *)
enum NSTextScalingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case standard
  case iOS
}
extension NSAttributedString.DocumentAttributeKey {
  @available(macOS 10.0, *)
  static let documentType: NSAttributedString.DocumentAttributeKey
  static let converted: NSAttributedString.DocumentAttributeKey
  static let cocoaVersion: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.6, *)
  static let fileType: NSAttributedString.DocumentAttributeKey
  static let title: NSAttributedString.DocumentAttributeKey
  static let company: NSAttributedString.DocumentAttributeKey
  static let copyright: NSAttributedString.DocumentAttributeKey
  static let subject: NSAttributedString.DocumentAttributeKey
  static let author: NSAttributedString.DocumentAttributeKey
  static let keywords: NSAttributedString.DocumentAttributeKey
  static let comment: NSAttributedString.DocumentAttributeKey
  static let editor: NSAttributedString.DocumentAttributeKey
  static let creationTime: NSAttributedString.DocumentAttributeKey
  static let modificationTime: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.5, *)
  static let manager: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.6, *)
  static let category: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.14, *)
  static let appearance: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let characterEncoding: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.11, *)
  static let defaultAttributes: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let paperSize: NSAttributedString.DocumentAttributeKey
  static let leftMargin: NSAttributedString.DocumentAttributeKey
  static let rightMargin: NSAttributedString.DocumentAttributeKey
  static let topMargin: NSAttributedString.DocumentAttributeKey
  static let bottomMargin: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let viewSize: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let viewZoom: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let viewMode: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let readOnly: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let backgroundColor: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let hyphenationFactor: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.0, *)
  static let defaultTabInterval: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.7, *)
  static let textLayoutSections: NSAttributedString.DocumentAttributeKey
  static let excludedElements: NSAttributedString.DocumentAttributeKey
  static let textEncodingName: NSAttributedString.DocumentAttributeKey
  static let prefixSpaces: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.15, *)
  static let textScaling: NSAttributedString.DocumentAttributeKey
  @available(macOS 10.15, *)
  static let sourceTextScaling: NSAttributedString.DocumentAttributeKey
}
extension NSAttributedString.DocumentReadingOptionKey {
  static let documentType: NSAttributedString.DocumentReadingOptionKey
  static let defaultAttributes: NSAttributedString.DocumentReadingOptionKey
  static let characterEncoding: NSAttributedString.DocumentReadingOptionKey
  static let textEncodingName: NSAttributedString.DocumentReadingOptionKey
  static let baseURL: NSAttributedString.DocumentReadingOptionKey
  static let timeout: NSAttributedString.DocumentReadingOptionKey
  static let webPreferences: NSAttributedString.DocumentReadingOptionKey
  static let webResourceLoadDelegate: NSAttributedString.DocumentReadingOptionKey
  static let textSizeMultiplier: NSAttributedString.DocumentReadingOptionKey
  @available(macOS 10.6, *)
  static let fileType: NSAttributedString.DocumentReadingOptionKey
  @available(macOS 10.15, *)
  static let targetTextScaling: NSAttributedString.DocumentReadingOptionKey
  @available(macOS 10.15, *)
  static let sourceTextScaling: NSAttributedString.DocumentReadingOptionKey
}
extension NSAttributedString {
  @available(macOS 10.4, *)
  init(url: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(macOS 10.0, *)
  init(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(macOS 10.0, *)
  func data(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) throws -> Data
  @available(macOS 10.0, *)
  func fileWrapper(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) throws -> FileWrapper
  init?(rtf data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(rtfd data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(html data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(html data: Data, baseURL base: URL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(docFormat data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(html data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(rtfdFileWrapper wrapper: FileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  func rtf(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) -> Data?
  func rtfd(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) -> Data?
  func rtfdFileWrapper(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) -> FileWrapper?
  func docFormat(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) -> Data?
}
extension NSMutableAttributedString {
  @available(macOS 10.5, *)
  func read(from url: URL, options opts: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?, error: ()) throws
  @available(macOS 10.0, *)
  func read(from data: Data, options opts: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?, error: ()) throws
}
extension NSAttributedString {
  func fontAttributes(in range: NSRange) -> [NSAttributedString.Key : Any]
  func rulerAttributes(in range: NSRange) -> [NSAttributedString.Key : Any]
  @available(macOS 10.11, *)
  func containsAttachments(in range: NSRange) -> Bool
  func lineBreak(before location: Int, within aRange: NSRange) -> Int
  func lineBreakByHyphenating(before location: Int, within aRange: NSRange) -> Int
  func doubleClick(at location: Int) -> NSRange
  func nextWord(from location: Int, forward isForward: Bool) -> Int
  func range(of block: NSTextBlock, at location: Int) -> NSRange
  func range(of table: NSTextTable, at location: Int) -> NSRange
  func range(of list: NSTextList, at location: Int) -> NSRange
  func itemNumber(in list: NSTextList, at location: Int) -> Int
}
extension NSAttributedString : NSPasteboardReading, NSPasteboardWriting {
  @available(macOS 10.5, *)
  class var textTypes: [String] { get }
  @available(macOS 10.5, *)
  class var textUnfilteredTypes: [String] { get }
}
extension NSMutableAttributedString {
  func superscriptRange(_ range: NSRange)
  func subscriptRange(_ range: NSRange)
  func unscriptRange(_ range: NSRange)
  func applyFontTraits(_ traitMask: NSFontTraitMask, range: NSRange)
  func setAlignment(_ alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, range: NSRange)
}
extension NSAttributedString {
  var containsAttachments: Bool { get }
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -initWithURL:options:documentAttributes:error: instead")
  init?(url: URL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -initWithURL:options:documentAttributes:error: instead")
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use NSDataDetector instead")
  func url(at location: Int, effectiveRange: NSRangePointer) -> URL?
}
extension NSMutableAttributedString {
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -readFromURL:options:documentAttributes:error: instead")
  func read(from url: URL, options: [AnyHashable : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -readFromData:options:documentAttributes:error: instead")
  func read(from data: Data, options: [AnyHashable : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool
}
