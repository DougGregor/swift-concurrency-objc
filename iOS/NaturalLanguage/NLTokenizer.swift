
enum NLTokenUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case word
  case sentence
  case paragraph
  case document
}
extension NLTokenizer {
  struct Attributes : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var numeric: NLTokenizer.Attributes { get }
    static var symbolic: NLTokenizer.Attributes { get }
    static var emoji: NLTokenizer.Attributes { get }
  }
}
@available(iOS 12.0, *)
class NLTokenizer : NSObject {
  @available(iOS 12.0, *)
  init(unit: NLTokenUnit)
  @available(iOS 12.0, *)
  var unit: NLTokenUnit { get }
  @available(iOS 12.0, *)
  var string: String?
  @available(iOS 12.0, *)
  func setLanguage(_ language: NLLanguage)
  @available(iOS 12.0, *)
  func __tokenRange(at characterIndex: Int) -> NSRange
  @available(iOS 14.0, *)
  func __tokenRange(for range: NSRange) -> NSRange
  @available(iOS 12.0, *)
  func __tokens(for range: NSRange) -> [NSValue]
  @available(iOS 12.0, *)
  func __enumerateTokens(in range: NSRange, using block: (NSRange, NLTokenizer.Attributes, UnsafeMutablePointer<ObjCBool>) -> Void)
}

@available(macOS 10.14, iOS 12.0, watchOS 5.0, tvOS 12.0, *)
extension NLTokenizer {
  @nonobjc func tokenRange(at index: String.Index) -> Range<String.Index>
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
  @nonobjc func tokenRange(for range: Range<String.Index>) -> Range<String.Index>
  @nonobjc func enumerateTokens(in range: Range<String.Index>, using block: (Range<String.Index>, NLTokenizer.Attributes) -> Bool)
  @nonobjc func tokens(for range: Range<String.Index>) -> [Range<String.Index>]
}
