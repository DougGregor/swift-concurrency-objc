
@available(tvOS 3.2, *)
class UITextChecker : NSObject {
  func rangeOfMisspelledWord(in stringToCheck: String, range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language: String) -> NSRange
  func guesses(forWordRange range: NSRange, in string: String, language: String) -> [String]?
  func completions(forPartialWordRange range: NSRange, in string: String, language: String) -> [String]?
  func ignoreWord(_ wordToIgnore: String)
  var ignoredWords: [String]?
  class func learnWord(_ word: String)
  class func hasLearnedWord(_ word: String) -> Bool
  class func unlearnWord(_ word: String)
  class var availableLanguages: [String] { get }
}
