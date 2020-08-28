
class NSSpellServer : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSpellServerDelegate?
  func registerLanguage(_ language: String?, byVendor vendor: String?) -> Bool
  func isWord(inUserDictionaries word: String, caseSensitive flag: Bool) -> Bool
  func run()
}
struct __ssFlags {
  var delegateLearnsWords: UInt32
  var delegateForgetsWords: UInt32
  var busy: UInt32
  var _reserved: UInt32
  init()
  init(delegateLearnsWords: UInt32, delegateForgetsWords: UInt32, busy: UInt32, _reserved: UInt32)
}
protocol NSSpellServerDelegate : NSObjectProtocol {
  optional func spellServer(_ sender: NSSpellServer, findMisspelledWordIn stringToCheck: String, language: String, wordCount: UnsafeMutablePointer<Int>, countOnly: Bool) -> NSRange
  optional func spellServer(_ sender: NSSpellServer, suggestGuessesForWord word: String, inLanguage language: String) -> [String]?
  optional func spellServer(_ sender: NSSpellServer, didLearnWord word: String, inLanguage language: String)
  optional func spellServer(_ sender: NSSpellServer, didForgetWord word: String, inLanguage language: String)
  optional func spellServer(_ sender: NSSpellServer, suggestCompletionsForPartialWordRange range: NSRange, in string: String, language: String) -> [String]?
  @available(macOS 10.5, *)
  optional func spellServer(_ sender: NSSpellServer, checkGrammarIn stringToCheck: String, language: String?, details: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> NSRange
  @available(macOS 10.6, *)
  optional func spellServer(_ sender: NSSpellServer, check stringToCheck: String, offset: Int, types checkingTypes: NSTextCheckingTypes, options: [String : Any]? = nil, orthography: NSOrthography?, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]?
  @available(macOS 10.7, *)
  optional func spellServer(_ sender: NSSpellServer, recordResponse response: Int, toCorrection correction: String, forWord word: String, language: String)
}
@available(macOS 10.5, *)
let NSGrammarRange: String
@available(macOS 10.5, *)
let NSGrammarUserDescription: String
@available(macOS 10.5, *)
let NSGrammarCorrections: String
