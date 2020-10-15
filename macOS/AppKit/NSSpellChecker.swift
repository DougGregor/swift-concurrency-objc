
extension NSSpellChecker.OptionKey {
  @available(macOS 10.6, *)
  static let orthography: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let quotes: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let replacements: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let referenceDate: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let referenceTimeZone: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let documentURL: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let documentTitle: NSSpellChecker.OptionKey
  @available(macOS 10.6, *)
  static let documentAuthor: NSSpellChecker.OptionKey
  @available(macOS 10.7, *)
  static let regularExpressions: NSSpellChecker.OptionKey
  @available(macOS 10.12, *)
  static let selectedRange: NSSpellChecker.OptionKey
}
class NSSpellChecker : NSObject {
  class var shared: NSSpellChecker { get }
  class var sharedSpellCheckerExists: Bool { get }
  class func uniqueSpellDocumentTag() -> Int
  func checkSpelling(of stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, wordCount: UnsafeMutablePointer<Int>?) -> NSRange
  func checkSpelling(of stringToCheck: String, startingAt startingOffset: Int) -> NSRange
  func countWords(in stringToCount: String, language: String?) -> Int
  @available(macOS 10.5, *)
  func checkGrammar(of stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, details: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> NSRange
  @available(macOS 10.6, *)
  func check(_ stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any]? = nil, inSpellDocumentWithTag tag: Int, orthography: AutoreleasingUnsafeMutablePointer<NSOrthography?>?, wordCount: UnsafeMutablePointer<Int>?) -> [NSTextCheckingResult]
  @available(macOS 10.6, *)
  func requestChecking(of stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any]? = nil, inSpellDocumentWithTag tag: Int, completionHandler: ((Int, [NSTextCheckingResult], NSOrthography, Int) -> Void)? = nil) -> Int
  @available(macOS 10.12.2, *)
  func requestCandidates(forSelectedRange selectedRange: NSRange, in stringToCheck: String, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any]? = nil, inSpellDocumentWithTag tag: Int, completionHandler: ((Int, [NSTextCheckingResult]) -> Void)? = nil) -> Int
  @available(macOS 10.6, *)
  func menu(for result: NSTextCheckingResult, string checkedString: String, options: [NSSpellChecker.OptionKey : Any]? = nil, atLocation location: NSPoint, in view: NSView) -> NSMenu?
  @available(macOS 10.6, *)
  func userQuotesArray(forLanguage language: String) -> [String]
  @available(macOS 10.6, *)
  var userReplacementsDictionary: [String : String] { get }
  func updateSpellingPanel(withMisspelledWord word: String)
  @available(macOS 10.5, *)
  func updateSpellingPanel(withGrammarString string: String, detail: [String : Any])
  var spellingPanel: NSPanel { get }
  var accessoryView: NSView?
  @available(macOS 10.6, *)
  var substitutionsPanel: NSPanel { get }
  @available(macOS 10.6, *)
  var substitutionsPanelAccessoryViewController: NSViewController?
  @available(macOS 10.6, *)
  func updatePanels()
  func ignoreWord(_ wordToIgnore: String, inSpellDocumentWithTag tag: Int)
  func ignoredWords(inSpellDocumentWithTag tag: Int) -> [String]?
  func setIgnoredWords(_ words: [String], inSpellDocumentWithTag tag: Int)
  @available(macOS 10.6, *)
  func guesses(forWordRange range: NSRange, in string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(macOS 10.7, *)
  func correction(forWordRange range: NSRange, in string: String, language: String, inSpellDocumentWithTag tag: Int) -> String?
  func completions(forPartialWordRange range: NSRange, in string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(macOS 10.7, *)
  func language(forWordRange range: NSRange, in string: String, orthography: NSOrthography?) -> String?
  func closeSpellDocument(withTag tag: Int)
  @available(macOS 10.7, *)
  func record(_ response: NSSpellChecker.CorrectionResponse, toCorrection correction: String, forWord word: String, language: String?, inSpellDocumentWithTag tag: Int)
  @available(macOS 10.7, *)
  func showCorrectionIndicator(of type: NSSpellChecker.CorrectionIndicatorType, primaryString: String, alternativeStrings: [String], forStringIn rectOfTypedString: NSRect, view: NSView, completionHandler completionBlock: ((String?) -> Void)? = nil)
  @available(macOS 10.7, *)
  func dismissCorrectionIndicator(for view: NSView)
  @available(macOS 10.12, *)
  func preventsAutocorrection(before string: String, language: String?) -> Bool
  @available(macOS 10.12.2, *)
  func deletesAutospaceBetweenString(_ precedingString: String, andString followingString: String, language: String?) -> Bool
  @available(macOS 10.5, *)
  var availableLanguages: [String] { get }
  @available(macOS 10.6, *)
  var userPreferredLanguages: [String] { get }
  @available(macOS 10.6, *)
  var automaticallyIdentifiesLanguages: Bool
  func setWordFieldStringValue(_ string: String)
  func learnWord(_ word: String)
  @available(macOS 10.5, *)
  func hasLearnedWord(_ word: String) -> Bool
  @available(macOS 10.5, *)
  func unlearnWord(_ word: String)
  @available(macOS 10.7, *)
  class var isAutomaticTextReplacementEnabled: Bool { get }
  @available(macOS 10.7, *)
  class var isAutomaticSpellingCorrectionEnabled: Bool { get }
  @available(macOS 10.9, *)
  class var isAutomaticQuoteSubstitutionEnabled: Bool { get }
  @available(macOS 10.9, *)
  class var isAutomaticDashSubstitutionEnabled: Bool { get }
  @available(macOS 10.12, *)
  class var isAutomaticCapitalizationEnabled: Bool { get }
  @available(macOS 10.12, *)
  class var isAutomaticPeriodSubstitutionEnabled: Bool { get }
  @available(macOS 10.12.2, *)
  class var isAutomaticTextCompletionEnabled: Bool { get }
  func language() -> String
  func setLanguage(_ language: String) -> Bool
}
extension NSSpellChecker {
  enum CorrectionResponse : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case accepted
    case rejected
    case ignored
    case edited
    case reverted
  }
  enum CorrectionIndicatorType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case reversion
    case guesses
  }
  @available(macOS 10.7, *)
  class let didChangeAutomaticSpellingCorrectionNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didChangeAutomaticTextReplacementNotification: NSNotification.Name
  @available(macOS 10.9, *)
  class let didChangeAutomaticQuoteSubstitutionNotification: NSNotification.Name
  @available(macOS 10.9, *)
  class let didChangeAutomaticDashSubstitutionNotification: NSNotification.Name
  @available(macOS 10.12, *)
  class let didChangeAutomaticCapitalizationNotification: NSNotification.Name
  @available(macOS 10.12, *)
  class let didChangeAutomaticPeriodSubstitutionNotification: NSNotification.Name
  @available(macOS 10.12.2, *)
  class let didChangeAutomaticTextCompletionNotification: NSNotification.Name
  struct OptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSSpellChecker {
}
