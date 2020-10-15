
@available(watchOS 2.0, *)
class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var string: String { get }
  func attributes(at location: Int, effectiveRange range: NSRangePointer?) -> [NSAttributedString.Key : Any]
}
extension NSAttributedString {
  var length: Int { get }
  func attribute(_ attrName: NSAttributedString.Key, at location: Int, effectiveRange range: NSRangePointer?) -> Any?
  func attributedSubstring(from range: NSRange) -> NSAttributedString
  func attributes(at location: Int, longestEffectiveRange range: NSRangePointer?, in rangeLimit: NSRange) -> [NSAttributedString.Key : Any]
  func attribute(_ attrName: NSAttributedString.Key, at location: Int, longestEffectiveRange range: NSRangePointer?, in rangeLimit: NSRange) -> Any?
  func isEqual(to other: NSAttributedString) -> Bool
  init(string str: String)
  init(string str: String, attributes attrs: [NSAttributedString.Key : Any]? = nil)
  init(attributedString attrStr: NSAttributedString)
  @available(watchOS 2.0, *)
  func enumerateAttributes(in enumerationRange: NSRange, options opts: NSAttributedString.EnumerationOptions = [], using block: ([NSAttributedString.Key : Any], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateAttribute(_ attrName: NSAttributedString.Key, in enumerationRange: NSRange, options opts: NSAttributedString.EnumerationOptions = [], using block: (Any?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSAttributedString {
  struct EnumerationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var reverse: NSAttributedString.EnumerationOptions { get }
    static var longestEffectiveRangeNotRequired: NSAttributedString.EnumerationOptions { get }
  }
  struct Key : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(watchOS 2.0, *)
class NSMutableAttributedString : NSAttributedString {
  func replaceCharacters(in range: NSRange, with str: String)
  func setAttributes(_ attrs: [NSAttributedString.Key : Any]?, range: NSRange)
}
extension NSMutableAttributedString {
  var mutableString: NSMutableString { get }
  func addAttribute(_ name: NSAttributedString.Key, value: Any, range: NSRange)
  func addAttributes(_ attrs: [NSAttributedString.Key : Any] = [:], range: NSRange)
  func removeAttribute(_ name: NSAttributedString.Key, range: NSRange)
  func replaceCharacters(in range: NSRange, with attrString: NSAttributedString)
  func insert(_ attrString: NSAttributedString, at loc: Int)
  func append(_ attrString: NSAttributedString)
  func deleteCharacters(in range: NSRange)
  func setAttributedString(_ attrString: NSAttributedString)
  func beginEditing()
  func endEditing()
}
