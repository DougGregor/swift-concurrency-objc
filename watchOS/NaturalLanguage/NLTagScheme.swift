
struct NLTagScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTagScheme {
  @available(watchOS 5.0, *)
  static let tokenType: NLTagScheme
  @available(watchOS 5.0, *)
  static let lexicalClass: NLTagScheme
  @available(watchOS 5.0, *)
  static let nameType: NLTagScheme
  @available(watchOS 5.0, *)
  static let nameTypeOrLexicalClass: NLTagScheme
  @available(watchOS 5.0, *)
  static let lemma: NLTagScheme
  @available(watchOS 5.0, *)
  static let language: NLTagScheme
  @available(watchOS 5.0, *)
  static let script: NLTagScheme
  @available(watchOS 6.0, *)
  static let sentimentScore: NLTagScheme
}
struct NLTag : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTag {
  @available(watchOS 5.0, *)
  static let word: NLTag
  @available(watchOS 5.0, *)
  static let punctuation: NLTag
  @available(watchOS 5.0, *)
  static let whitespace: NLTag
  @available(watchOS 5.0, *)
  static let other: NLTag
  @available(watchOS 5.0, *)
  static let noun: NLTag
  @available(watchOS 5.0, *)
  static let verb: NLTag
  @available(watchOS 5.0, *)
  static let adjective: NLTag
  @available(watchOS 5.0, *)
  static let adverb: NLTag
  @available(watchOS 5.0, *)
  static let pronoun: NLTag
  @available(watchOS 5.0, *)
  static let determiner: NLTag
  @available(watchOS 5.0, *)
  static let particle: NLTag
  @available(watchOS 5.0, *)
  static let preposition: NLTag
  @available(watchOS 5.0, *)
  static let number: NLTag
  @available(watchOS 5.0, *)
  static let conjunction: NLTag
  @available(watchOS 5.0, *)
  static let interjection: NLTag
  @available(watchOS 5.0, *)
  static let classifier: NLTag
  @available(watchOS 5.0, *)
  static let idiom: NLTag
  @available(watchOS 5.0, *)
  static let otherWord: NLTag
  @available(watchOS 5.0, *)
  static let sentenceTerminator: NLTag
  @available(watchOS 5.0, *)
  static let openQuote: NLTag
  @available(watchOS 5.0, *)
  static let closeQuote: NLTag
  @available(watchOS 5.0, *)
  static let openParenthesis: NLTag
  @available(watchOS 5.0, *)
  static let closeParenthesis: NLTag
  @available(watchOS 5.0, *)
  static let wordJoiner: NLTag
  @available(watchOS 5.0, *)
  static let dash: NLTag
  @available(watchOS 5.0, *)
  static let otherPunctuation: NLTag
  @available(watchOS 5.0, *)
  static let paragraphBreak: NLTag
  @available(watchOS 5.0, *)
  static let otherWhitespace: NLTag
  @available(watchOS 5.0, *)
  static let personalName: NLTag
  @available(watchOS 5.0, *)
  static let placeName: NLTag
  @available(watchOS 5.0, *)
  static let organizationName: NLTag
}
