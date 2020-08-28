
struct NLTagScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTagScheme {
  @available(tvOS 12.0, *)
  static let tokenType: NLTagScheme
  @available(tvOS 12.0, *)
  static let lexicalClass: NLTagScheme
  @available(tvOS 12.0, *)
  static let nameType: NLTagScheme
  @available(tvOS 12.0, *)
  static let nameTypeOrLexicalClass: NLTagScheme
  @available(tvOS 12.0, *)
  static let lemma: NLTagScheme
  @available(tvOS 12.0, *)
  static let language: NLTagScheme
  @available(tvOS 12.0, *)
  static let script: NLTagScheme
  @available(tvOS 13.0, *)
  static let sentimentScore: NLTagScheme
}
struct NLTag : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTag {
  @available(tvOS 12.0, *)
  static let word: NLTag
  @available(tvOS 12.0, *)
  static let punctuation: NLTag
  @available(tvOS 12.0, *)
  static let whitespace: NLTag
  @available(tvOS 12.0, *)
  static let other: NLTag
  @available(tvOS 12.0, *)
  static let noun: NLTag
  @available(tvOS 12.0, *)
  static let verb: NLTag
  @available(tvOS 12.0, *)
  static let adjective: NLTag
  @available(tvOS 12.0, *)
  static let adverb: NLTag
  @available(tvOS 12.0, *)
  static let pronoun: NLTag
  @available(tvOS 12.0, *)
  static let determiner: NLTag
  @available(tvOS 12.0, *)
  static let particle: NLTag
  @available(tvOS 12.0, *)
  static let preposition: NLTag
  @available(tvOS 12.0, *)
  static let number: NLTag
  @available(tvOS 12.0, *)
  static let conjunction: NLTag
  @available(tvOS 12.0, *)
  static let interjection: NLTag
  @available(tvOS 12.0, *)
  static let classifier: NLTag
  @available(tvOS 12.0, *)
  static let idiom: NLTag
  @available(tvOS 12.0, *)
  static let otherWord: NLTag
  @available(tvOS 12.0, *)
  static let sentenceTerminator: NLTag
  @available(tvOS 12.0, *)
  static let openQuote: NLTag
  @available(tvOS 12.0, *)
  static let closeQuote: NLTag
  @available(tvOS 12.0, *)
  static let openParenthesis: NLTag
  @available(tvOS 12.0, *)
  static let closeParenthesis: NLTag
  @available(tvOS 12.0, *)
  static let wordJoiner: NLTag
  @available(tvOS 12.0, *)
  static let dash: NLTag
  @available(tvOS 12.0, *)
  static let otherPunctuation: NLTag
  @available(tvOS 12.0, *)
  static let paragraphBreak: NLTag
  @available(tvOS 12.0, *)
  static let otherWhitespace: NLTag
  @available(tvOS 12.0, *)
  static let personalName: NLTag
  @available(tvOS 12.0, *)
  static let placeName: NLTag
  @available(tvOS 12.0, *)
  static let organizationName: NLTag
}
