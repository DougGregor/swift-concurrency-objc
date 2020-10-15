
struct NLTagScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTagScheme {
  @available(macOS 10.14, *)
  static let tokenType: NLTagScheme
  @available(macOS 10.14, *)
  static let lexicalClass: NLTagScheme
  @available(macOS 10.14, *)
  static let nameType: NLTagScheme
  @available(macOS 10.14, *)
  static let nameTypeOrLexicalClass: NLTagScheme
  @available(macOS 10.14, *)
  static let lemma: NLTagScheme
  @available(macOS 10.14, *)
  static let language: NLTagScheme
  @available(macOS 10.14, *)
  static let script: NLTagScheme
  @available(macOS 10.15, *)
  static let sentimentScore: NLTagScheme
}
struct NLTag : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTag {
  @available(macOS 10.14, *)
  static let word: NLTag
  @available(macOS 10.14, *)
  static let punctuation: NLTag
  @available(macOS 10.14, *)
  static let whitespace: NLTag
  @available(macOS 10.14, *)
  static let other: NLTag
  @available(macOS 10.14, *)
  static let noun: NLTag
  @available(macOS 10.14, *)
  static let verb: NLTag
  @available(macOS 10.14, *)
  static let adjective: NLTag
  @available(macOS 10.14, *)
  static let adverb: NLTag
  @available(macOS 10.14, *)
  static let pronoun: NLTag
  @available(macOS 10.14, *)
  static let determiner: NLTag
  @available(macOS 10.14, *)
  static let particle: NLTag
  @available(macOS 10.14, *)
  static let preposition: NLTag
  @available(macOS 10.14, *)
  static let number: NLTag
  @available(macOS 10.14, *)
  static let conjunction: NLTag
  @available(macOS 10.14, *)
  static let interjection: NLTag
  @available(macOS 10.14, *)
  static let classifier: NLTag
  @available(macOS 10.14, *)
  static let idiom: NLTag
  @available(macOS 10.14, *)
  static let otherWord: NLTag
  @available(macOS 10.14, *)
  static let sentenceTerminator: NLTag
  @available(macOS 10.14, *)
  static let openQuote: NLTag
  @available(macOS 10.14, *)
  static let closeQuote: NLTag
  @available(macOS 10.14, *)
  static let openParenthesis: NLTag
  @available(macOS 10.14, *)
  static let closeParenthesis: NLTag
  @available(macOS 10.14, *)
  static let wordJoiner: NLTag
  @available(macOS 10.14, *)
  static let dash: NLTag
  @available(macOS 10.14, *)
  static let otherPunctuation: NLTag
  @available(macOS 10.14, *)
  static let paragraphBreak: NLTag
  @available(macOS 10.14, *)
  static let otherWhitespace: NLTag
  @available(macOS 10.14, *)
  static let personalName: NLTag
  @available(macOS 10.14, *)
  static let placeName: NLTag
  @available(macOS 10.14, *)
  static let organizationName: NLTag
}
