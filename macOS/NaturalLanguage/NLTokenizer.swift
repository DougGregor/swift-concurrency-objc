
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
@available(macOS 10.14, *)
class NLTokenizer : NSObject {
  @available(macOS 10.14, *)
  init(unit: NLTokenUnit)
  @available(macOS 10.14, *)
  var unit: NLTokenUnit { get }
  @available(macOS 10.14, *)
  var string: String?
  @available(macOS 10.14, *)
  func setLanguage(_ language: NLLanguage)
  @available(macOS 10.14, *)
  func __tokenRange(at characterIndex: Int) -> NSRange
  @available(macOS 11.0, *)
  func __tokenRange(for range: NSRange) -> NSRange
  @available(macOS 10.14, *)
  func __tokens(for range: NSRange) -> [NSValue]
  @available(macOS 10.14, *)
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
