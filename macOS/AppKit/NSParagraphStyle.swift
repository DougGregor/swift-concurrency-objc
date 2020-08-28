
@available(macOS 10.0, *)
enum NSLineBreakMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case byWordWrapping
  case byCharWrapping
  case byClipping
  case byTruncatingHead
  case byTruncatingTail
  case byTruncatingMiddle
}
extension NSTextTab {
  struct OptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSTextTab.OptionKey {
  @available(macOS 10.0, *)
  static let columnTerminators: NSTextTab.OptionKey
}
@available(macOS 10.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding, NSSecureCoding {
  @available(macOS 10.11, *)
  class func columnTerminators(for aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [NSTextTab.OptionKey : Any] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [NSTextTab.OptionKey : Any] { get }
}
@available(macOS 10.0, *)
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @NSCopying class var `default`: NSParagraphStyle { get }
  class func defaultWritingDirection(forLanguage languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(macOS 10.0, *)
  var tabStops: [NSTextTab] { get }
  @available(macOS 10.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(macOS 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  var tighteningFactorForTruncation: Float { get }
  var textBlocks: [NSTextBlock] { get }
  var textLists: [NSTextList] { get }
  var headerLevel: Int { get }
  @available(macOS 10.11, *)
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy { get }
}
@available(macOS 10.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  @available(macOS 10.0, *)
  func addTabStop(_ anObject: NSTextTab)
  @available(macOS 10.0, *)
  func removeTabStop(_ anObject: NSTextTab)
  @available(macOS 10.0, *)
  func setParagraphStyle(_ obj: NSParagraphStyle)
}
extension NSParagraphStyle {
  enum TextTabType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case leftTabStopType
    case rightTabStopType
    case centerTabStopType
    case decimalTabStopType
  }
  struct LineBreakStrategy : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(macOS 10.11, *)
    static var pushOut: NSParagraphStyle.LineBreakStrategy { get }
    @available(macOS 11.0, *)
    static var hangulWordPriority: NSParagraphStyle.LineBreakStrategy { get }
    @available(macOS 11.0, *)
    static var standard: NSParagraphStyle.LineBreakStrategy { get }
  }
}
extension NSTextTab {
  convenience init(type: NSParagraphStyle.TextTabType, location loc: CGFloat)
  var tabStopType: NSParagraphStyle.TextTabType { get }
}
