
@available(macOS 10.5, *)
func CFStringTokenizerCopyBestStringLanguage(_ string: CFString!, _ range: CFRange) -> CFString!
class CFStringTokenizer : _CFObject {
}
var kCFStringTokenizerUnitWord: CFOptionFlags { get }
var kCFStringTokenizerUnitSentence: CFOptionFlags { get }
var kCFStringTokenizerUnitParagraph: CFOptionFlags { get }
var kCFStringTokenizerUnitLineBreak: CFOptionFlags { get }
var kCFStringTokenizerUnitWordBoundary: CFOptionFlags { get }
var kCFStringTokenizerAttributeLatinTranscription: CFOptionFlags { get }
var kCFStringTokenizerAttributeLanguage: CFOptionFlags { get }
struct CFStringTokenizerTokenType : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var normal: CFStringTokenizerTokenType { get }
  static var hasSubTokensMask: CFStringTokenizerTokenType { get }
  static var hasDerivedSubTokensMask: CFStringTokenizerTokenType { get }
  static var hasHasNumbersMask: CFStringTokenizerTokenType { get }
  static var hasNonLettersMask: CFStringTokenizerTokenType { get }
  static var isCJWordMask: CFStringTokenizerTokenType { get }
}
@available(macOS 10.5, *)
func CFStringTokenizerGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func CFStringTokenizerCreate(_ alloc: CFAllocator!, _ string: CFString!, _ range: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFStringTokenizer!
@available(macOS 10.5, *)
func CFStringTokenizerSetString(_ tokenizer: CFStringTokenizer!, _ string: CFString!, _ range: CFRange)
@available(macOS 10.5, *)
func CFStringTokenizerGoToTokenAtIndex(_ tokenizer: CFStringTokenizer!, _ index: CFIndex) -> CFStringTokenizerTokenType
@available(macOS 10.5, *)
func CFStringTokenizerAdvanceToNextToken(_ tokenizer: CFStringTokenizer!) -> CFStringTokenizerTokenType
@available(macOS 10.5, *)
func CFStringTokenizerGetCurrentTokenRange(_ tokenizer: CFStringTokenizer!) -> CFRange
@available(macOS 10.5, *)
func CFStringTokenizerCopyCurrentTokenAttribute(_ tokenizer: CFStringTokenizer!, _ attribute: CFOptionFlags) -> CFTypeRef!
@available(macOS 10.5, *)
func CFStringTokenizerGetCurrentSubTokens(_ tokenizer: CFStringTokenizer!, _ ranges: UnsafeMutablePointer<CFRange>!, _ maxRangeLength: CFIndex, _ derivedSubTokens: CFMutableArray!) -> CFIndex
