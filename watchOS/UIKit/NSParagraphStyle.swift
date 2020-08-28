
var __NSPARAGRAPH_STYLE_SHARED_SECTION__: Int32 { get }
@available(watchOS 2.0, *)
enum NSLineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case byWordWrapping
  case byCharWrapping
  case byClipping
  case byTruncatingHead
  case byTruncatingTail
  case byTruncatingMiddle
}
extension NSParagraphStyle {
  struct LineBreakStrategy : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(watchOS 2.0, *)
    static var pushOut: NSParagraphStyle.LineBreakStrategy { get }
    @available(watchOS 7.0, *)
    static var hangulWordPriority: NSParagraphStyle.LineBreakStrategy { get }
    @available(watchOS 7.0, *)
    static var standard: NSParagraphStyle.LineBreakStrategy { get }
  }
}
extension NSTextTab {
  struct OptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSTextTab.OptionKey {
  @available(watchOS 2.0, *)
  static let columnTerminators: NSTextTab.OptionKey
}
@available(watchOS 2.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding, NSSecureCoding {
  @available(watchOS 2.0, *)
  class func columnTerminators(for aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [NSTextTab.OptionKey : Any] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [NSTextTab.OptionKey : Any] { get }
}
@available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var tabStops: [NSTextTab] { get }
  @available(watchOS 2.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(watchOS 2.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  @available(watchOS 2.0, *)
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy { get }
}
@available(watchOS 2.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  @available(watchOS 2.0, *)
  func addTabStop(_ anObject: NSTextTab)
  @available(watchOS 2.0, *)
  func removeTabStop(_ anObject: NSTextTab)
  @available(watchOS 2.0, *)
  func setParagraphStyle(_ obj: NSParagraphStyle)
}
