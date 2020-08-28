
extension NSAttributedString.Key {
  @available(iOS 6.0, *)
  static let font: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let paragraphStyle: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let foregroundColor: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let backgroundColor: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let ligature: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let kern: NSAttributedString.Key
  @available(iOS 14.0, *)
  static let tracking: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let strikethroughStyle: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let underlineStyle: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let strokeColor: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let strokeWidth: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let shadow: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let textEffect: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let attachment: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let link: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let baselineOffset: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let underlineColor: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let strikethroughColor: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let obliqueness: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let expansion: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let writingDirection: NSAttributedString.Key
  @available(iOS 6.0, *)
  static let verticalGlyphForm: NSAttributedString.Key
}
@available(iOS 6.0, *)
struct NSUnderlineStyle : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var single: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var thick: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var double: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var patternDot: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var patternDash: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var patternDashDot: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var patternDashDotDot: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  static var byWord: NSUnderlineStyle { get }
}
@available(iOS 9.0, *)
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
  @available(iOS 7.0, *)
  static let letterpressStyle: NSAttributedString.TextEffectStyle
}
extension NSMutableAttributedString {
  @available(iOS 7.0, *)
  func fixAttributes(in range: NSRange)
}
extension NSAttributedString.DocumentType {
  @available(iOS 7.0, *)
  static let plain: NSAttributedString.DocumentType
  @available(iOS 7.0, *)
  static let rtf: NSAttributedString.DocumentType
  @available(iOS 7.0, *)
  static let rtfd: NSAttributedString.DocumentType
  @available(iOS 7.0, *)
  static let html: NSAttributedString.DocumentType
}
extension NSAttributedString.TextLayoutSectionKey {
  @available(iOS 7.0, *)
  static let orientation: NSAttributedString.TextLayoutSectionKey
  @available(iOS 7.0, *)
  static let range: NSAttributedString.TextLayoutSectionKey
}
@available(iOS 13.0, *)
enum NSTextScalingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case standard
  case iOS
}
extension NSAttributedString.DocumentAttributeKey {
  @available(iOS 7.0, *)
  static let documentType: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let characterEncoding: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let defaultAttributes: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let paperSize: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let paperMargin: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let viewSize: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let viewZoom: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let viewMode: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let readOnly: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let backgroundColor: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let hyphenationFactor: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let defaultTabInterval: NSAttributedString.DocumentAttributeKey
  @available(iOS 7.0, *)
  static let textLayoutSections: NSAttributedString.DocumentAttributeKey
  @available(iOS 13.0, *)
  static let textScaling: NSAttributedString.DocumentAttributeKey
  @available(iOS 13.0, *)
  static let sourceTextScaling: NSAttributedString.DocumentAttributeKey
  @available(iOS 13.0, *)
  static let cocoaVersionDocumentAttribute: NSAttributedString.DocumentAttributeKey
}
extension NSAttributedString.DocumentReadingOptionKey {
  static let documentType: NSAttributedString.DocumentReadingOptionKey
  static let defaultAttributes: NSAttributedString.DocumentReadingOptionKey
  static let characterEncoding: NSAttributedString.DocumentReadingOptionKey
  @available(iOS 13.0, *)
  static let targetTextScaling: NSAttributedString.DocumentReadingOptionKey
  @available(iOS 13.0, *)
  static let sourceTextScaling: NSAttributedString.DocumentReadingOptionKey
}
extension NSAttributedString {
  @available(iOS 9.0, *)
  init(url: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(iOS 7.0, *)
  init(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(iOS 7.0, *)
  func data(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) throws -> Data
  @available(iOS 7.0, *)
  func fileWrapper(from range: NSRange, documentAttributes dict: [NSAttributedString.DocumentAttributeKey : Any] = [:]) throws -> FileWrapper
}
extension NSMutableAttributedString {
  @available(iOS 9.0, *)
  func read(from url: URL, options opts: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(iOS 7.0, *)
  func read(from data: Data, options opts: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
}
extension NSAttributedString {
  @available(iOS 9.0, *)
  func containsAttachments(in range: NSRange) -> Bool
}
extension NSAttributedString : NSItemProviderReading, NSItemProviderWriting {
}
@available(iOS, introduced: 7.0, deprecated: 9.0, renamed: "NSWritingDirectionFormatType")
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case embedding
  case override
}
extension NSAttributedString {
  @available(iOS, introduced: 7.0, deprecated: 9.0)
  init(fileURL url: URL, options: [AnyHashable : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
}
extension NSMutableAttributedString {
  @available(iOS, introduced: 7.0, deprecated: 9.0)
  func read(fromFileURL url: URL, options opts: [AnyHashable : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
}
